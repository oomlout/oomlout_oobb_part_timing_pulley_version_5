"""Catalogue contracts and real rendered geometry, including tool access."""

import copy
import math
from pathlib import Path
import shutil
import subprocess

import numpy as np
import oobb
import pytest
import trimesh
import yaml

import working
import working_populate
import working_scad
from oobb_components import load, timing_pulley


OPTIONS = working_populate.get_options()
OPENSCAD = shutil.which("openscad.com") or shutil.which("openscad")


def option(style="basic", teeth=60, depth=6, bore=5):
    for candidate in OPTIONS:
        if candidate["style"] == style and candidate["number_of_teeth"] == teeth and candidate["depth"] == depth:
            if "coupler_bore" not in candidate or candidate["coupler_bore"] == bore:
                return copy.deepcopy(candidate["oobb_details"])
    raise AssertionError("Missing test option")


def material_at(mesh, x, y, z):
    # Test the watertight 3-D solid directly. Large perforated sections may
    # stitch into self-crossing planar paths, for which contour parity is wrong.
    return bool(mesh.contains([[x, y, z]])[0])


@pytest.fixture
def render(tmp_path):
    if not OPENSCAD:
        pytest.skip("OpenSCAD required for rendered mesh tests")
    count = 0

    def build(parameters, mode="3dpr", profile=False, hardware=False):
        nonlocal count
        count += 1
        path = tmp_path / f"mesh_{count}.scad"
        thing = oobb.get_default_thing(type="test_timing_pulley")
        if profile:
            thing["components"] = load("pulley_gt2").action(**parameters)
        elif hardware:
            thing["components"] = timing_pulley.coupler_reference(**parameters)
        else:
            working_scad.get_timing_pulley(thing, **parameters)
        oobb.opsc_make_object(str(path), thing["components"], mode=mode, save_type="none")
        result = subprocess.run([OPENSCAD, "--backend=Manifold", "--hardwarnings", "-o", str(path.with_suffix(".stl")), str(path)], capture_output=True, text=True, timeout=120)
        output = result.stdout + result.stderr
        assert result.returncode == 0, output
        assert "WARNING:" not in output and "ERROR:" not in output, output
        mesh = trimesh.load_mesh(path.with_suffix(".stl"))
        assert mesh.is_watertight
        assert mesh.volume > 0
        return mesh

    return build


def test_catalogue_size_coverage_and_verbose_taxonomy():
    assert len(OPTIONS) == 30
    assert len({item["id"] for item in OPTIONS}) == 30
    basic = [item for item in OPTIONS if item["style"] == "basic"]
    assert {item["number_of_teeth"] for item in basic} == {16, 20, 24, 30, 36, 40, 48, 60, 72, 144}
    assert {item["depth"] for item in basic} == {6, 9}
    for item in OPTIONS:
        assert [item["taxonomy_1"], item["taxonomy_2"], item["taxonomy_3"]] == ["oobb", "part", "timing_pulley"]
        assert item["taxonomy_4"].endswith("_diameter")
        assert item["taxonomy_5"] == f"{item['number_of_teeth']}_number_of_teeth"
        assert item["taxonomy_6"] == item["style"]
        values = timing_pulley.dimensions(**item["oobb_details"])
        assert values["number_of_teeth"] == item["number_of_teeth"]
        for position in values["joining_positions"]:
            radius = np.linalg.norm(position)
            assert radius + oobb.gv("screw_countersunk_radius_m3", "3dpr") + values["minimum_web"] <= values["root_radius"] + 1e-8
        if "coupler" in item:
            assert item["coupler"] == next(c for c in working_populate.get_couplers() if c["bore"] == item["coupler_bore"])
        if item["style"] == "idler_bearing_606":
            assert values["bearing_depth"] == item["bearing_depth"] == 6
            assert values["bearing_outer_diameter"] == 17


def test_only_recessed_5_mm_bore_metal_couplers_are_populated():
    couplers = [item for item in OPTIONS if "coupler" in item]
    assert len(couplers) == 4
    assert {item["coupler_bore"] for item in couplers} == {5}
    assert {item["style"] for item in couplers} == {"mechanical_coupling_recessed"}
    assert {(item["number_of_teeth"], item["depth"]) for item in couplers} == {(72, 6), (72, 9), (144, 6), (144, 9)}
    for item in couplers:
        values = item["assembled_dimensions"]
        assert values["centre_hole_diameter"] == pytest.approx(10.4)
        assert values["coupler_bottom"] == values["bottom"] - 2
        assert values["coupler_top"] == values["bottom"] + 10
        assert values["coupler_grub_screw_from_flange"] == 5
        assert values["coupler_flange_top"] + values["coupler_grub_screw_from_flange"] == values["split_z"]
        assert values["allen_key_access_z"] == values["split_z"] == values["bottom"] + 5
        assert values["shared_joining_fasteners"] is True
        assert values["joining_positions"] == values["mounting_positions"]
        assert len(values["mounting_positions"]) == 4
        assert values["mounting_radius_name"] == "m3"
        assert values["coupler_mount_rotation"] == 45
        # Model the installed vertical bolt shafts as well as the empty holes:
        # no bolt may cross either straight Allen-key path from the rim.
        clearance = oobb.gv("hole_radius_m3", "3dpr") + values["allen_key_access_diameter"] / 2 + values["oobb_hole_minimum_web"]
        for x, y in values["mounting_positions"]:
            assert abs(x) == pytest.approx(abs(y))
            if x > 0:
                assert abs(y) > clearance
            if y > 0:
                assert abs(x) > clearance


def test_every_catalogue_depth_is_belt_width_with_consistent_outer_thickness():
    for item in OPTIONS:
        values = item["assembled_dimensions"]
        assert values["belt_depth"] == item["depth"] + 0.5
        assert values["belt_top"] - values["belt_bottom"] == item["depth"] + 0.5
        assert values["assembled_depth"] == item["depth"] + 2.5
        assert values["flange_depth"] == 1


def test_only_four_coupler_fasteners_join_both_halves(monkeypatch):
    parameters = option("mechanical_coupling_recessed", 72)
    values = timing_pulley.dimensions(**parameters)
    calls = []
    original = oobb.oobb_easy

    def capture(**kwargs):
        if kwargs.get("shape") == "screw_countersunk":
            calls.append(copy.deepcopy(kwargs))
        return original(**kwargs)

    monkeypatch.setattr(oobb, "oobb_easy", capture)
    timing_pulley._assembled(values)
    assert len(calls) == 4
    assert {tuple(call["pos"][:2]) for call in calls} == {tuple(position) for position in values["mounting_positions"]}
    assert all(call["nut"] is True and call["overhang"] is True for call in calls)
    assert all(call["depth"] == values["coupler_fastener_depth"] for call in calls)
    # Nut cavities finish below the metal flange, never within the metal.
    assert values["coupler_fastener_nut_bottom"] + oobb.gv("nut_depth_m3", "3dpr") == values["coupler_bottom"]


def test_retirement_removes_only_obsolete_couplers_from_live_folders(tmp_path, monkeypatch):
    monkeypatch.chdir(tmp_path)
    live = next(item for item in OPTIONS if "coupler" in item)
    for family in ["parts", "parts_source"]:
        for name, settings in [
            (live["id"], live),
            ("obsolete_8_mm_coupler", {"taxonomy_3": "timing_pulley", "style": "mechanical_coupling_recessed", "coupler_bore": 8}),
            ("obsolete_underneath_5_mm_coupler", {"taxonomy_3": "timing_pulley", "style": "mechanical_coupling_underneath", "coupler_bore": 5}),
            ("custom_basic_pulley", {"taxonomy_3": "timing_pulley", "style": "basic"}),
        ]:
            folder = Path(family) / name
            folder.mkdir(parents=True)
            (folder / "working.yaml").write_text(yaml.safe_dump(settings), encoding="utf-8")
    retired = working_populate.retire_coupler_options(OPTIONS)
    assert len(retired) == 4
    for family in ["parts", "parts_source"]:
        assert (Path(family) / live["id"] / "working.yaml").exists()
        assert (Path(family) / "custom_basic_pulley" / "working.yaml").exists()
        assert not (Path(family) / "obsolete_8_mm_coupler").exists()
        assert (Path("temporary/retired_couplers") / family / "obsolete_8_mm_coupler/working.yaml").exists()
    assert working_populate.retire_coupler_options(OPTIONS) == []


@pytest.mark.parametrize("details", [
    {"number_of_teeth": 16.5}, {"number_of_teeth": True}, {"depth": float("nan")},
    {"depth": 0}, {"style": "typo"}, {"layout": "typo"},
    {"number_of_teeth": 24, "style": "idler_bearing_606"},
    {"style": "mechanical_coupling_recessed"}, {"bearing_radial_clearance": -1},
    {"additional_tooth_depth": 0.5}, {"shaft_diameter": 100},
])
def test_bad_geometry_is_rejected(details):
    with pytest.raises(ValueError):
        timing_pulley.dimensions(**details)


def test_gt2_fit_keywords_survive_dispatch():
    primitive = load("pulley_gt2")
    geometry = primitive.action(number_of_teeth=24, depth=9, additional_tooth_width=0.35, additional_tooth_depth=0.1)
    assert geometry[0]["additional_tooth_width"] == 0.35
    assert geometry[0]["additional_tooth_depth"] == 0.1
    for teeth in [True, 7, 20.2, float("inf")]:
        with pytest.raises(ValueError):
            primitive.action(number_of_teeth=teeth)


def test_oobb_holes_cover_available_centred_lattice_without_hardware_collisions():
    for item in OPTIONS:
        values = timing_pulley.dimensions(**item["oobb_details"])
        assert item["oobb_details"]["oobb_holes"] is True
        assert item["oobb_details"]["joining_rotation"] == values["joining_rotation"] == 45
        for x, y in values["joining_positions"]:
            assert abs(x) == pytest.approx(abs(y))
        locations = set()
        for hole in values["oobb_hole_positions"]:
            x, y = hole["position"]
            assert x / 7.5 == round(x / 7.5)
            assert y / 7.5 == round(y / 7.5)
            expected_name = "m6" if x % 15 == 0 and y % 15 == 0 else "m3"
            assert hole["radius_name"] == expected_name
            assert (x, y) not in locations
            locations.add((x, y))
            radius = max(oobb.gv("hole_radius_" + expected_name, mode) for mode in ["3dpr", "true", "laser"])
            web = values["oobb_hole_minimum_web"]
            assert math.hypot(x, y) + radius + web <= values["root_radius"]
            centre_radius = values["centre_keepout"]
            if values["style"].startswith("mechanical_coupling"):
                centre_radius = max(centre_radius, values["coupler"]["diameter_baseplate"] / 2)
            assert math.hypot(x, y) - radius - web >= centre_radius
            for joining in values["joining_positions"]:
                assert math.dist([x, y], joining) >= radius + values["joining_head_radius"] + web
            for mount in values["mounting_positions"]:
                assert math.dist([x, y], mount) >= radius + values["mounting_head_radius"] + web
            if values["allen_key_access_diameter"]:
                clearance = radius + values["allen_key_access_diameter"] / 2 + web
                assert not (x >= 0 and abs(y) < clearance)
                assert not (y >= 0 and abs(x) < clearance)
        # Every lattice point in the root circle is either a real hole or has
        # a recorded physical exclusion. The centre remains the original bore.
        excluded = {tuple(hole["position"]) for hole in values["oobb_holes_excluded"]}
        assert not locations & excluded
        extent = math.floor(values["root_radius"] / 7.5)
        for i in range(-extent, extent + 1):
            for j in range(-extent, extent + 1):
                point = (i * 7.5, j * 7.5)
                if point != (0, 0) and math.hypot(*point) <= values["root_radius"]:
                    assert point in locations | excluded


@pytest.mark.parametrize("teeth,m3,m6", [(16, 0, 0), (30, 0, 0), (36, 4, 0), (40, 4, 0), (48, 4, 0), (60, 4, 0), (72, 12, 4), (144, 72, 20)])
def test_basic_pattern_counts(teeth, m3, m6):
    values = timing_pulley.dimensions(**option(teeth=teeth))
    assert sum(hole["radius_name"] == "m3" for hole in values["oobb_hole_positions"]) == m3
    assert sum(hole["radius_name"] == "m6" for hole in values["oobb_hole_positions"]) == m6


def test_grid_can_be_disabled_and_invalid_pattern_settings_are_rejected():
    parameters = option(teeth=72)
    parameters["oobb_holes"] = False
    assert timing_pulley.dimensions(**parameters)["oobb_hole_positions"] == []
    for invalid in [{"oobb_holes": "yes"}, {"joining_rotation": 0}, {"joining_rotation": float("nan")}, {"oobb_hole_minimum_web": -1}]:
        with pytest.raises(ValueError):
            timing_pulley.dimensions(**invalid)


def test_pipeline_round_trip(tmp_path, monkeypatch):
    monkeypatch.chdir(tmp_path)
    paths = working.main(filter="60_number_of_teeth_basic_6_depth", modes=["3dpr", "true"])
    assert len(list(Path("parts_source").glob("*/working.yaml"))) == 30
    assert len(list(Path("parts").glob("*/working.yaml"))) == 30
    assert len(paths) == 2
    for filename in paths:
        path = Path(filename)
        assert "use <pulley_gt2.scad>" in path.read_text()
        assert (path.parent / "pulley_gt2.scad").is_file()
        saved = yaml.safe_load((path.parent / "working.yaml").read_text())
        assert saved["oobb_details"]["style"] == "basic"
    stale_folder = Path("parts") / next(item["id"] for item in OPTIONS if item["style"] == "mechanical_coupling_recessed" and item["number_of_teeth"] == 72 and item["depth"] == 6)
    for extension in ["scad", "stl", "png"]:
        (stale_folder / f"coupler_spacers.{extension}").write_text("obsolete spacer")
    paths = working.main(filter="72_number_of_teeth_mechanical_coupling_recessed_6_depth_5_mm_bore", modes=["3dpr", "true"])
    assert len(paths) == 3
    assert not list(Path("parts").rglob("coupler_spacers.*"))
    metal_assembly = next(Path(path) for path in paths if Path(path).name == "assembly_with_coupler.scad")
    assert "Silver" in metal_assembly.read_text()
    assert "Silver" not in (metal_assembly.parent / "3dpr.scad").read_text()
    assert "Silver" not in (metal_assembly.parent / "true.scad").read_text()


@pytest.mark.mesh
@pytest.mark.parametrize("teeth", [16, 20, 24, 30, 36, 40, 48, 60, 72, 144])
def test_every_legacy_size_has_connected_print_parts(render, teeth):
    parameters = option(teeth=teeth)
    mesh = render(parameters)
    expected = 2 if teeth >= 40 else 1
    assert len(mesh.split()) == expected
    assert mesh.bounds[0, 2] == pytest.approx(0, abs=1e-5)
    assert not material_at(mesh, 0, 0, 1)


@pytest.mark.mesh
@pytest.mark.parametrize("style,teeth,bore", [
    ("idler_bearing_606", 60, 5),
    ("mechanical_coupling_recessed", 72, 5),
    ("mechanical_coupling_recessed", 144, 5),
])
@pytest.mark.parametrize("depth", [6, 9])
def test_style_prints_as_two_watertight_halves(render, style, teeth, bore, depth):
    parameters = option(style, teeth, depth, bore)
    values = timing_pulley.dimensions(**parameters)
    mesh = render(parameters)
    assert len(mesh.split()) == 2
    assert mesh.bounds[0, 2] == pytest.approx(0, abs=1e-5)
    assert mesh.bounds[1, 2] == pytest.approx(max(values["lower_half_depth"], values["upper_half_depth"]), abs=1e-5)
    halves = sorted(mesh.split(), key=lambda half: half.centroid[0])
    assert halves[1].bounds[0, 0] - halves[0].bounds[1, 0] >= 9.99


@pytest.mark.mesh
def test_bearing_pocket_and_retaining_lips(render):
    parameters = option("idler_bearing_606")
    parameters["layout"] = "assembled"
    values = timing_pulley.dimensions(**parameters)
    mesh = render(parameters)
    assert not material_at(mesh, 8, 0, 0.5)
    assert material_at(mesh, 9.2, 0, 0.5)
    assert material_at(mesh, 7, 0, values["top"] - 0.2)
    assert material_at(mesh, 7, 0, values["bottom"] + 0.2)
    assert not material_at(mesh, 5.5, 0, values["top"] - 0.2)


@pytest.mark.mesh
@pytest.mark.parametrize("teeth", [72, 144])
@pytest.mark.parametrize("depth", [6, 9])
def test_coupler_barrel_through_bore_and_round_grub_access_are_at_the_seam(render, teeth, depth):
    parameters = option("mechanical_coupling_recessed", teeth, depth)
    parameters["layout"] = "assembled"
    values = timing_pulley.dimensions(**parameters)
    mesh = render(parameters)
    for z in [values["bottom"] + 0.15, -0.25, 0.25, values["top"] - 0.15]:
        assert not material_at(mesh, -5.1, 0, z)
    for radius in [6, 14, values["root_radius"] - 0.25]:
        assert not material_at(mesh, radius, 0, values["split_z"])
        assert not material_at(mesh, 0, radius, values["split_z"])
        # Material above/below the round port distinguishes it from the former
        # tall slot. Both halves contain one matching semicircle.
        for z in [values["split_z"] - 2.25, values["split_z"] + 2.25]:
            assert material_at(mesh, radius, 0, z)
            assert material_at(mesh, 0, radius, z)
    for x, y in values["mounting_positions"]:
        assert not material_at(mesh, x, y, -2)
        assert not material_at(mesh, x, y, 2)


@pytest.mark.mesh
@pytest.mark.parametrize("depth", [6, 9])
def test_coupler_body_has_the_same_envelope_as_the_basic_pulley(render, depth):
    parameters = option("mechanical_coupling_recessed", 72, depth)
    parameters["layout"] = "assembled"
    basic = option("basic", 72, depth)
    basic["layout"] = "assembled"
    mesh = render(parameters)
    basic_mesh = render(basic)
    values = timing_pulley.dimensions(**parameters)
    assert mesh.bounds == pytest.approx(basic_mesh.bounds, abs=1e-5)
    assert values["belt_center"] == 0
    assert values["bottom"] == -values["top"]
    assert values["assembled_depth"] == depth + 2.5


@pytest.mark.mesh
@pytest.mark.parametrize("depth", [6, 9])
def test_actual_metal_reference_fits_recess_without_intersecting_the_pulley(render, tmp_path, depth):
    parameters = option("mechanical_coupling_recessed", 72, depth)
    parameters["layout"] = "assembled"
    plastic = render(parameters)
    metal = render(parameters, hardware=True)
    values = timing_pulley.dimensions(**parameters)
    assert metal.bounds[0, 2] == pytest.approx(values["bottom"] - 2)
    assert metal.bounds[1, 2] == pytest.approx(values["bottom"] + 10)
    assert metal.bounds[0, 2] < plastic.bounds[0, 2]
    assert metal.bounds[1, 2] > values["split_z"]
    assert values["coupler_flange_top"] == values["bottom"]
    assert values["coupler_flange_top"] + values["coupler"]["height_cylindrical"] / 2 == values["split_z"]
    plastic.export(tmp_path / "plastic.stl")
    metal.export(tmp_path / "metal.stl")
    source = tmp_path / "interference.scad"
    source.write_text('intersection() { import("plastic.stl"); import("metal.stl"); }', encoding="utf-8")
    result = subprocess.run([OPENSCAD, "--backend=Manifold", "-o", str(tmp_path / "interference.stl"), str(source)], capture_output=True, text=True, timeout=120)
    output = result.stdout + result.stderr
    assert "ERROR:" not in output and "WARNING:" not in output, output
    # Flush seating deliberately shares a plane. Manifold can export that
    # contact as a zero-thickness surface instead of an empty intersection.
    intersection = tmp_path / "interference.stl"
    if intersection.exists():
        contact = trimesh.load_mesh(intersection)
        assert contact.bounds[:, 2] == pytest.approx([values["bottom"]] * 2, abs=1e-6)
        # The mass centre of an intentionally flat contact has zero-volume
        # division; only its volume is relevant here.
        with np.errstate(divide="ignore", invalid="ignore"):
            assert abs(contact.volume) < 1e-8
    else:
        assert "top level object is empty" in output.lower(), output


@pytest.mark.mesh
@pytest.mark.parametrize("depth,split_z,heights", [(6, 0.75, [5, 3.5]), (9, -0.75, [5, 6.5])])
def test_flush_coupler_uses_offset_split_and_both_halves_rest_on_bed(render, depth, split_z, heights):
    parameters = option("mechanical_coupling_recessed", 72, depth)
    values = timing_pulley.dimensions(**parameters)
    assert values["coupler_flange_top"] == values["bottom"]
    assert values["coupler_flange_recess_depth"] == 0
    assert values["split_z"] == values["allen_key_access_z"] == split_z
    mesh = render(parameters)
    halves = sorted(mesh.split(), key=lambda half: half.centroid[0])
    for half, height in zip(halves, heights):
        assert half.bounds[:, 2] == pytest.approx([0, height], abs=1e-5)
        # Both halves contain the matching semicircle at the print bed.
        x = 14 + (values["print_spacing"] if half is halves[1] else 0)
        assert not material_at(half, x, 0, 0.25)
        assert material_at(half, x, 0, 2.25)


@pytest.mark.mesh
@pytest.mark.parametrize("style,teeth", [("basic", 36), ("idler_bearing_606", 60), ("mechanical_coupling_recessed", 72)])
@pytest.mark.parametrize("depth", [6, 9])
def test_rendered_flange_spacing_fits_the_nominal_belt_width(render, style, teeth, depth):
    parameters = option(style, teeth, depth)
    parameters["layout"] = "assembled"
    values = timing_pulley.dimensions(**parameters)
    mesh = render(parameters)
    radius = values["outside_radius"] + 0.5
    x = -radius / np.sqrt(2)
    y = -radius / np.sqrt(2)
    assert not material_at(mesh, x, y, depth / 2 + 0.1)
    assert not material_at(mesh, x, y, -depth / 2 - 0.1)
    assert material_at(mesh, x, y, values["belt_top"] + 0.5)
    assert material_at(mesh, x, y, values["belt_bottom"] - 0.5)


@pytest.mark.mesh
def test_mode_dimensions_and_whole_part_transform(render):
    parameters = option()
    parameters["layout"] = "assembled"
    parameters["pos"] = [13, -7, 20]
    parameters["rot"] = [0, 0, 30]
    mesh = render(parameters, "true")
    values = timing_pulley.dimensions(**parameters)
    assert mesh.bounds[0, 2] == pytest.approx(20 + values["bottom"], abs=1e-5)
    assert mesh.bounds[1, 2] == pytest.approx(20 + values["top"], abs=1e-5)
    assert len(mesh.split()) == 1


@pytest.mark.mesh
@pytest.mark.parametrize("teeth", [16, 60, 144])
def test_actual_gt2_tooth_count_diameter_and_solid_core(render, teeth):
    mesh = render({"number_of_teeth": teeth, "depth": 6}, profile=True)
    assert material_at(mesh, 0, 0, 3)  # No hidden 0.2 mm bore.
    outside_radius = teeth / np.pi - 0.254
    radius = outside_radius - 0.35
    angles = np.linspace(0, 2 * np.pi, teeth * 100, endpoint=False)
    x = radius * np.cos(angles)
    y = radius * np.sin(angles)
    inside = np.zeros(len(angles), dtype=bool)
    section = mesh.section(plane_origin=[0, 0, 3], plane_normal=[0, 0, 1])
    for contour in section.discrete:
        for start, end in zip(contour[:-1], contour[1:]):
            if abs(end[1] - start[1]) < 1e-12:
                continue
            crosses = (start[1] > y) != (end[1] > y)
            edge_x = start[0] + (y - start[1]) * (end[0] - start[0]) / (end[1] - start[1])
            inside ^= crosses & (edge_x > x)
    assert np.count_nonzero(inside & ~np.roll(inside, 1)) == teeth
    radial_vertices = np.linalg.norm(mesh.vertices[:, :2], axis=1)
    assert radial_vertices.max() == pytest.approx(outside_radius, abs=2e-5)


@pytest.mark.mesh
def test_fit_allowances_change_real_tooth_geometry(render):
    nominal = render({"number_of_teeth": 24, "depth": 6, "additional_tooth_width": 0, "additional_tooth_depth": 0}, profile=True)
    wider = render({"number_of_teeth": 24, "depth": 6, "additional_tooth_width": 0.35, "additional_tooth_depth": 0.1}, profile=True)
    assert wider.volume < nominal.volume
    assert wider.bounds[:, 2] == pytest.approx([0, 6])


@pytest.mark.mesh
@pytest.mark.parametrize("mode", ["3dpr", "true"])
def test_m3_and_m6_holes_are_real_through_holes_with_mode_aware_radii(render, mode):
    parameters = option(teeth=72)
    parameters["layout"] = "assembled"
    mesh = render(parameters, mode)
    values = timing_pulley.dimensions(**parameters)
    for x, y, name in [(7.5, 0, "m3"), (15, 0, "m6")]:
        radius = oobb.gv("hole_radius_" + name, mode)
        for z in [values["bottom"] + 0.15, -0.25, 0.25, values["top"] - 0.15]:
            assert not material_at(mesh, x, y, z)
        assert not material_at(mesh, x + radius - 0.15, y, 0.5)
        assert material_at(mesh, x + radius + 0.15, y, 0.5)
    for x, y in values["joining_positions"]:
        assert not material_at(mesh, x, y, 0.5)
        # A web separates the nearest axis hole from each diagonal join.
        closest = min(values["oobb_hole_positions"], key=lambda hole: math.dist([x, y], hole["position"]))
        direction = np.array(closest["position"]) - [x, y]
        distance = np.linalg.norm(direction)
        direction /= distance
        edge = np.array(closest["position"]) - direction * (closest["radius"] + 0.15)
        assert material_at(mesh, edge[0], edge[1], 0.5)


@pytest.mark.mesh
def test_print_pairs_keep_the_same_grid_after_flipping_the_lower_half(render):
    parameters = option(teeth=72)
    values = timing_pulley.dimensions(**parameters)
    mesh = render(parameters)
    for hole in values["oobb_hole_positions"]:
        x, y = hole["position"]
        assert not material_at(mesh, x, -y, 1)
        assert not material_at(mesh, values["print_spacing"] + x, y, 1)


@pytest.mark.mesh
def test_catalogue_validator_rejects_a_mesh_with_missing_grid_holes(render):
    from validate_catalogue import check_oobb_through_holes

    parameters = option(teeth=72)
    declared_dimensions = timing_pulley.dimensions(**parameters)
    parameters["oobb_holes"] = False
    mesh = render(parameters)
    with pytest.raises(RuntimeError, match="Blocked OOBB grid holes"):
        check_oobb_through_holes(mesh, declared_dimensions)

"""Generate labelled review plates and printable hardware-fit coupons."""

import argparse
import copy
from pathlib import Path

import oobb
import yaml

import scad_help
import working_populate
from oobb_components import timing_pulley


def choose(options, style, teeth=72, bore=5):
    for option in options:
        if option["style"] == style and option["number_of_teeth"] == teeth and option["depth"] == 6:
            if "coupler_bore" not in option or option["coupler_bore"] == bore:
                return copy.deepcopy(option["oobb_details"])
    raise ValueError(f"No option for {style}, {teeth} teeth, {bore} mm bore")


def write_layout(name, entries, render=False, stl=False, camera=None):
    folder = Path("examples") / name
    folder.mkdir(parents=True, exist_ok=True)
    objects = []
    manifest = []
    for label, settings, position in entries:
        parameters = copy.deepcopy(settings)
        parameters["pos"] = position
        show_coupler_reference = parameters.pop("show_coupler_reference", False)
        objects.extend(timing_pulley.action(**parameters))
        if show_coupler_reference:
            objects.extend(timing_pulley.coupler_reference(**parameters))
        # Raised text sits on the bed, separate from the mechanical test piece.
        objects.extend(oobb.oobb_easy(shape="text", type="positive", text=label, size=3, depth=0.6, halign="center", pos=[position[0], position[1] - timing_pulley.dimensions(**settings)["flange_radius"] - 9, 0]))
        manifest.append({"label": label, "parameters": settings, "position": position})
    path = folder / "working.scad"
    oobb.opsc_make_object(str(path), objects, mode="3dpr", save_type="none")
    scad_help.make_portable(path)
    (folder / "layout.yaml").write_text(yaml.safe_dump(manifest, sort_keys=False), encoding="utf-8")
    if render:
        scad_help.export(path, camera=camera)
    if stl:
        scad_help.export(path, "stl")
    return path


def main(render=False, stl=False):
    options = working_populate.get_options()
    layouts = []

    entries = []
    styles = ["basic", "idler_bearing_606", "mechanical_coupling_recessed"]
    for index, style in enumerate(styles):
        settings = choose(options, style)
        settings["layout"] = "assembled"
        entries.append((style.replace("mechanical_coupling", "coupler"), settings, [index * 62, 0, 0]))
    layouts.append(write_layout("style_comparison", entries, render))

    entries = []
    x = 0
    for teeth in [16, 20, 24, 30, 36, 40, 48, 60, 72, 144]:
        settings = choose(options, "basic", teeth)
        settings["layout"] = "assembled"
        radius = timing_pulley.dimensions(**settings)["flange_radius"]
        x += radius
        entries.append((f"{teeth} teeth", settings, [x, 0, 0]))
        x += radius + 12
    layouts.append(write_layout("all_tooth_counts", entries, render))

    entries = []
    for teeth, x in [(40, 0), (72, 60), (144, 150)]:
        settings = choose(options, "basic", teeth)
        settings["layout"] = "assembled"
        values = timing_pulley.dimensions(**settings)
        m3_count = sum(hole["radius_name"] == "m3" for hole in values["oobb_hole_positions"])
        m6_count = sum(hole["radius_name"] == "m6" for hole in values["oobb_hole_positions"])
        entries.append((f"{teeth}t / {m3_count} M3 / {m6_count} M6", settings, [x, 0, 0]))
    layouts.append(write_layout("oobb_hole_pattern", entries, render, camera="0,0,0,0,0,0,350"))

    entries = []
    for index, style in enumerate(styles):
        settings = choose(options, style)
        settings["layout"] = "print"
        entries.append((style.replace("mechanical_coupling", "coupler"), settings, [(index % 2) * 140, -(index // 2) * 90, 0]))
    layouts.append(write_layout("clamshell_print_pairs", entries, render, stl))

    entries = []
    for index, clearance in enumerate([0.05, 0.15, 0.25]):
        settings = choose(options, "idler_bearing_606", 72)
        settings["bearing_radial_clearance"] = clearance
        settings["layout"] = "print"
        entries.append((f"606 radial +{clearance:.2f} mm", settings, [0, -index * 75, 0]))
    layouts.append(write_layout("bearing_fit", entries, render, stl))

    entries = []
    for index, teeth in enumerate([72, 144]):
        for row, layout in enumerate(["exploded", "section"]):
            settings = choose(options, "mechanical_coupling_recessed", teeth, 5)
            settings["layout"] = layout
            settings["show_coupler_reference"] = True
            entries.append((f"{teeth}t / 5 mm metal / {layout}", settings, [index * 120, -row * 115, 0]))
    layouts.append(write_layout("coupler_sections", entries, render))

    entries = []
    for index, depth in enumerate([6, 9]):
        settings = choose(options, "mechanical_coupling_recessed", 72)
        settings["depth"] = depth
        settings["layout"] = "section"
        settings["show_coupler_reference"] = True
        values = timing_pulley.dimensions(**settings)
        label = f"{depth} mm belt / split {values['split_z']:+.2f} mm / flush flange"
        entries.append((label, settings, [index * 110, 0, 0]))
    layouts.append(write_layout("coupler_seam_alignment", entries, render))

    entries = []
    for index, clearance in enumerate([0.1, 0.2, 0.3]):
        settings = choose(options, "mechanical_coupling_recessed")
        settings["coupler_radial_clearance"] = clearance
        settings["layout"] = "print"
        entries.append((f"flange radial +{clearance:.1f} mm", settings, [0, -index * 75, 0]))
    layouts.append(write_layout("coupler_fit", entries, render, stl))
    return layouts


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--render", action="store_true")
    parser.add_argument("--stl", action="store_true")
    main(**vars(parser.parse_args()))

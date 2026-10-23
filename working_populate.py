"""Define options first; map their details to verbose taxonomy in one final loop."""

import copy
import csv
import math
from pathlib import Path
import json
import shutil

from oomp_populate_helper import build_oomp_id, write_extras

from oobb_components import timing_pulley


def get_couplers():
    path = Path(__file__).parent / "source_file" / "dimension" / "flange" / "dimension.csv"
    couplers = []
    with path.open(encoding="utf-8-sig", newline="") as handle:
        for row in csv.DictReader(handle):
            coupler = {}
            for key, value in row.items():
                coupler[key] = float(value)
            couplers.append(coupler)
    return couplers


def get_options(**kwargs):
    options = []

    # All tooth counts and nominal belt widths from v4 get_pulleys(). Smaller
    # basic pulleys remain single-piece because M3 joining screws do not fit.
    for number_of_teeth in [16, 20, 24, 30, 36, 40, 48, 60, 72, 144]:
        for depth in [6, 9]:
            option = {}
            option["number_of_teeth"] = number_of_teeth
            option["depth"] = depth
            option["style"] = "basic"
            option["shaft_diameter"] = 6.5
            option["belt_clearance"] = 0.5
            option["flange_depth"] = 1
            option["flange_extension"] = 1
            option["minimum_web"] = 1
            if number_of_teeth == 16:
                option["minimum_web"] = 0.6
            if number_of_teeth == 40:
                option["minimum_web"] = 0.45
            option["additional_tooth_width"] = 0.2
            option["additional_tooth_depth"] = 0
            option["oobb_holes"] = True
            option["oobb_hole_minimum_web"] = 0.3
            option["joining_rotation"] = 45
            option["layout"] = "print"
            option["legacy_source"] = "C:/gh/oomlout_oobb_version_4/oobb_make_sets.py:get_pulleys"
            options.append(copy.deepcopy(option))

    # A 606 is 6 x 17 x 6 mm. Retaining lips and M3 hardware need >=60 teeth.
    for number_of_teeth in [60, 72, 144]:
        for depth in [6, 9]:
            option = {}
            option["number_of_teeth"] = number_of_teeth
            option["depth"] = depth
            option["style"] = "idler_bearing_606"
            option["bearing_size"] = "606"
            option["bearing_inner_diameter"] = 6
            option["bearing_outer_diameter"] = 17
            option["bearing_depth"] = 6
            option["bearing_radial_clearance"] = 0.15
            option["bearing_axial_clearance"] = 0.2
            option["belt_clearance"] = 0.5
            option["flange_depth"] = 1
            option["flange_extension"] = 1
            option["minimum_web"] = 1
            option["oobb_holes"] = True
            option["oobb_hole_minimum_web"] = 0.3
            option["joining_rotation"] = 45
            option["layout"] = "print"
            options.append(copy.deepcopy(option))

    # Only the requested 5 mm shaft-bore metal coupler is populated for now.
    # The full CSV remains the measured source; it is not a request to generate
    # every bore or an external underside adapter.
    coupler = next(item for item in get_couplers() if item["bore"] == 5)
    for number_of_teeth in [72, 144]:
        for depth in [6, 9]:
            option = {}
            option["number_of_teeth"] = number_of_teeth
            option["depth"] = depth
            option["style"] = "mechanical_coupling_recessed"
            option["coupler"] = copy.deepcopy(coupler)
            option["coupler_bore"] = 5
            option["coupler_oomp_id"] = "mechanical_coupler_flange_name_5_mm_bore"
            option["coupler_source"] = "C:/od/OneDrive/docs/oomp_mechanical_coupler/source_file/dimension/flange/dimension.csv"
            option["coupler_radial_clearance"] = 0.2
            option["coupler_axial_clearance"] = 0.2
            option["coupler_grub_screw_from_flange"] = 5
            option["coupler_mount_rotation"] = 45
            option["allen_key_access_diameter"] = 4
            option["belt_clearance"] = 0.5
            option["flange_depth"] = 1
            option["flange_extension"] = 1
            option["minimum_web"] = 1
            option["oobb_holes"] = True
            option["oobb_hole_minimum_web"] = 0.3
            option["joining_rotation"] = 45
            option["layout"] = "print"
            options.append(copy.deepcopy(option))

    # Taxonomy is a projection of the explicit option, never the geometry input.
    for option in options:
        values = timing_pulley.dimensions(**option)
        option["diameter"] = max(1, math.ceil((values["pitch_diameter"] - 10) / 15))
        option["taxonomy_1"] = "oobb"
        option["taxonomy_2"] = "part"
        option["taxonomy_3"] = "timing_pulley"
        option["taxonomy_4"] = f"{option['diameter']}_diameter"
        option["taxonomy_5"] = f"{option['number_of_teeth']}_number_of_teeth"
        option["taxonomy_6"] = option["style"]
        option["taxonomy_7"] = f"{option['depth']}_depth"
        if "coupler_bore" in option:
            bore_name = f"{option['coupler_bore']:g}".replace(".", "_")
            option["taxonomy_8"] = f"{bore_name}_mm_bore"
        option["id"] = build_oomp_id(option)

        oobb_details = copy.deepcopy(option)
        for key in list(oobb_details):
            if key.startswith("taxonomy_") or key in ["id", "legacy_source", "coupler_source"]:
                oobb_details.pop(key)
        oobb_details["oobb_name"] = "timing_pulley"
        option["oobb_details"] = oobb_details
        option["assembled_dimensions"] = values
        option["description"] = f"GT2 {option['number_of_teeth']} teeth, {option['depth']} mm belt, {option['style'].replace('_', ' ')}"

    return options


def retire_coupler_options(options):
    """Remove superseded generated couplers from the live catalogue safely.

    Keep their files in ignored temporary storage rather than discarding them.
    Basic/idler/custom entries are never selected by this cleanup.
    """
    root = Path.cwd().resolve()
    active_ids = {option["id"] for option in options}
    retired = []
    for family in ["parts_source", "parts"]:
        parent = (root / family).resolve()
        for path in sorted(parent.glob("*/working.yaml")):
            with path.open(encoding="utf-8") as handle:
                import yaml
                saved = yaml.safe_load(handle)
            if not isinstance(saved, dict) or saved.get("taxonomy_3") != "timing_pulley":
                continue
            if not saved.get("style", "").startswith("mechanical_coupling") or path.parent.name in active_ids:
                continue
            source = path.parent.resolve()
            destination = (root / "temporary" / "retired_couplers" / family / source.name).resolve()
            if source.parent != parent or not source.is_relative_to(root) or not destination.is_relative_to(root):
                raise ValueError("Retired coupler path is outside the project")
            if destination.exists():
                raise FileExistsError(f"Retired coupler backup already exists: {destination}")
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.move(str(source), str(destination))
            retired.append({"source": str(source.relative_to(root)), "archive": str(destination.relative_to(root))})
    if retired:
        manifest = root / "temporary" / "retired_couplers" / "manifest.json"
        previous = json.loads(manifest.read_text(encoding="utf-8")) if manifest.exists() else []
        manifest.write_text(json.dumps(previous + retired, indent=2) + "\n", encoding="utf-8")
        print(f"Retired {len(retired)} superseded coupler folders from the active catalogue")
    return retired


def main(**kwargs):
    options = get_options(**kwargs)
    retire_coupler_options(options)
    write_extras(options)
    print(f"Populated {len(options)} timing pulley options")
    return options


if __name__ == "__main__":
    main()

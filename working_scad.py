"""Draw populated OOMP timing pulleys with the shared OOBB v5 primitive."""

import copy
from pathlib import Path

import oobb
import yaml

from oobb_components import timing_pulley
import scad_help


def get_timing_pulley(thing, **kwargs):
    parameters = copy.deepcopy(kwargs)
    parameters["shape"] = "oobb_timing_pulley"
    parameters["type"] = "positive"
    oobb.append_full(thing, **parameters)


def get_base(thing, **kwargs):
    get_timing_pulley(thing, **kwargs)


def get_parts(kwargs=None, oomp_mode="project"):
    parts = []
    for path in sorted(Path("parts").glob("*/working.yaml")):
        with path.open(encoding="utf-8") as handle:
            part = yaml.safe_load(handle)
        if not isinstance(part, dict) or not isinstance(part.get("oobb_details"), dict):
            continue
        parameters = copy.deepcopy(part["oobb_details"])
        parameters.update(copy.deepcopy(kwargs or {}))
        part["kwargs"] = parameters
        part["oobb_name"] = "timing_pulley"
        parts.append(part)
    return parts


def make_scad(**kwargs):
    modes = kwargs.get("modes", ["3dpr"])
    if isinstance(modes, str):
        modes = [modes]
    if not modes or any(mode not in ["3dpr", "true"] for mode in modes):
        raise ValueError("Timing pulleys support 3dpr and true modes")
    save_type = kwargs.get("save_type", "stl" if kwargs.get("generate_stl", False) else "none")
    if save_type not in ["none", "stl", "all"]:
        raise ValueError("save_type must be none, stl, or all")
    generated = []
    for part in get_parts(kwargs):
        if kwargs.get("filter", "") not in part["id"]:
            continue
        parameters = part["kwargs"]
        # Catalogue defaults to a printable pair; true is the assembled model.
        folder = Path("parts") / part["id"]
        # Retire generated accessories from the previous equal-half design.
        if parameters.get("style") == "mechanical_coupling_recessed":
            for extension in ["scad", "stl", "png"]:
                (folder / f"coupler_spacers.{extension}").unlink(missing_ok=True)
        for mode in modes:
            settings = copy.deepcopy(parameters)
            settings.setdefault("layout", "print")
            if mode == "true" and "layout" not in kwargs:
                settings["layout"] = "assembled"
            thing = oobb.get_default_thing(type="timing_pulley")
            get_timing_pulley(thing, **settings)
            path = folder / f"{mode}.scad"
            oobb.opsc_make_object(str(path), thing["components"], mode=mode, save_type="none", overwrite=kwargs.get("overwrite", True))
            scad_help.make_portable(path)
            if save_type in ["stl", "all"]:
                scad_help.export(path, "stl")
            if save_type == "all":
                scad_help.export(path, "png")
            generated.append(str(path))
            if mode == "true" and parameters.get("style") == "mechanical_coupling_recessed":
                # Keep the purchased metal separate from the production files.
                # This explicit assembly reference is never exported as a part STL.
                assembly_settings = copy.deepcopy(parameters)
                assembly_settings["layout"] = "assembled"
                assembly = oobb.get_default_thing(type="timing_pulley_metal_assembly")
                get_timing_pulley(assembly, **assembly_settings)
                assembly["components"].extend(timing_pulley.coupler_reference(**assembly_settings))
                assembly_path = folder / "assembly_with_coupler.scad"
                oobb.opsc_make_object(str(assembly_path), assembly["components"], mode="true", save_type="none", overwrite=True)
                scad_help.make_portable(assembly_path)
                generated.append(str(assembly_path))
        print(f"Generated {part['id']}")
    return generated


def main(**kwargs):
    return make_scad(**kwargs)


if __name__ == "__main__":
    main()

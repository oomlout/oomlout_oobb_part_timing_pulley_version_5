"""Export and inspect every populated print layout; keep a reviewable report."""

import argparse
from concurrent.futures import ProcessPoolExecutor
import json
from pathlib import Path
import shutil
import subprocess

import numpy as np
import trimesh
import yaml


def check_oobb_through_holes(mesh, dimensions):
    """Inspect the exported STL, including the lower half's print flip."""
    holes = dimensions["oobb_hole_positions"]
    if not holes:
        return
    positions = np.array([hole["position"] for hole in holes], dtype=float)
    if dimensions["split"]:
        checks = [
            (positions * [1, -1], dimensions["lower_half_depth"]),
            (positions + [dimensions["print_spacing"], 0], dimensions["upper_half_depth"]),
        ]
    else:
        checks = [(positions, dimensions["top"] - dimensions["bottom"])]
    # Inspect each half at its own actual thickness. Recessed coupler halves
    # are deliberately unequal so the seam follows the grub screw above the flush flange.
    for positions, height in checks:
        for z in [0.15, height / 2, height - 0.15]:
            points = np.column_stack([positions, np.full(len(positions), z)])
            inside = mesh.contains(points)
            if inside.any():
                raise RuntimeError(f"Blocked OOBB grid holes at Z={z}: {positions[inside].tolist()}")


def validate(path):
    executable = shutil.which("openscad.com") or shutil.which("openscad")
    if not executable:
        raise RuntimeError("OpenSCAD is required")
    settings = yaml.safe_load((path.parent / "working.yaml").read_text(encoding="utf-8"))
    dimensions = settings["assembled_dimensions"]
    destination = path.with_suffix(".stl")
    command = [executable, "--backend=Manifold", "--hardwarnings", "--export-format=binstl", "-o", str(destination.resolve()), str(path.resolve())]
    result = subprocess.run(command, capture_output=True, text=True, timeout=180)
    output = result.stdout + result.stderr
    if result.returncode or "WARNING:" in output or "ERROR:" in output:
        raise RuntimeError(f"Failed {settings['id']}: {output}")
    mesh = trimesh.load_mesh(destination)
    count = len(mesh.split())
    expected = 2 if dimensions["split"] else 1
    if not mesh.is_watertight or mesh.volume <= 0 or count != expected:
        raise RuntimeError(f"Invalid mesh {settings['id']}: watertight={mesh.is_watertight}, shells={count}, expected={expected}")
    if abs(mesh.bounds[0, 2]) > 1e-4:
        raise RuntimeError(f"Part is not on the print bed: {settings['id']}")
    expected_depth = settings["depth"] + settings.get("belt_clearance", 0.5) + 2 * settings.get("flange_depth", 1)
    if abs(dimensions["assembled_depth"] - expected_depth) > 1e-6:
        raise RuntimeError(f"Pulley body was thickened independently of belt width: {settings['id']}")
    check_oobb_through_holes(mesh, dimensions)
    hole_counts = {}
    for name in ["m3", "m6"]:
        hole_counts[name] = sum(hole["radius_name"] == name for hole in dimensions["oobb_hole_positions"])
    return {"id": settings["id"], "watertight": True, "connected_parts": count, "nominal_belt_width_mm": settings["depth"], "belt_channel_width_mm": dimensions["belt_depth"], "assembled_body_depth_mm": dimensions["assembled_depth"], "shared_coupler_joining_screws": dimensions["shared_joining_fasteners"], "split_z_mm": dimensions["split_z"], "lower_half_depth_mm": dimensions["lower_half_depth"], "upper_half_depth_mm": dimensions["upper_half_depth"], "oobb_holes_per_pulley": hole_counts, "joining_rotation_degrees": dimensions["joining_rotation"], "volume_mm3": round(float(mesh.volume), 3), "bounds_mm": mesh.bounds.round(5).tolist()}


def main(jobs=4):
    paths = sorted(Path("parts").glob("*/3dpr.scad"))
    if not paths:
        raise RuntimeError("Run python working.py before validating the catalogue")
    # trimesh.contains uses libspatialindex, which is not thread-safe. Keep
    # each worker's spatial indexes in its own process while exporting in parallel.
    with ProcessPoolExecutor(max_workers=jobs) as executor:
        results = list(executor.map(validate, paths))
    report = {"part_count": len(results), "checks": ["OpenSCAD hardwarnings", "watertight", "positive volume", "expected connected parts", "print bed Z=0", "OOBB grid holes open at both faces and through the interior"], "parts": results}
    destination = Path("examples") / "catalogue_validation.json"
    destination.parent.mkdir(exist_ok=True)
    destination.write_text(json.dumps(report, indent=2) + "\n", encoding="utf-8")
    print(f"Validated and exported {len(results)} printable STL layouts; report: {destination}")
    return report


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--jobs", type=int, default=4)
    main(**vars(parser.parse_args()))

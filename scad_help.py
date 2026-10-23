"""Portable SCAD dependencies and deterministic OpenSCAD exports."""

from pathlib import Path
import re
import shutil
import subprocess

import oobb


def make_portable(path):
    path = Path(path)
    contents = path.read_text(encoding="utf-8")
    contents = re.sub(r"use <[^>]*pulley_gt2\.scad>;", "use <pulley_gt2.scad>;", contents)
    path.write_text(contents, encoding="utf-8", newline="\n")
    shutil.copyfile(Path(oobb.__file__).parent / "pulley_gt2.scad", path.parent / "pulley_gt2.scad")


def export(path, extension="png", camera=None):
    path = Path(path).resolve()
    executable = shutil.which("openscad.com") or shutil.which("openscad")
    if not executable:
        raise RuntimeError("OpenSCAD is required for previews and STL exports")
    destination = path.with_suffix("." + extension)
    command = [executable, "--backend=Manifold", "--hardwarnings", "-o", str(destination)]
    if extension == "stl":
        command.append("--export-format=binstl")
    if extension == "png":
        command.extend(["--imgsize=1600,1000", "--viewall", "--autocenter", "--projection=o", "--colorscheme=Tomorrow", "--render=true"])
        if camera:
            command.append("--camera=" + camera)
    command.append(str(path))
    result = subprocess.run(command, capture_output=True, text=True, timeout=180)
    output = result.stdout + result.stderr
    if result.returncode or "ERROR:" in output or "WARNING:" in output:
        raise RuntimeError(f"OpenSCAD failed for {path} (exit {result.returncode}):\n{output}")
    return destination

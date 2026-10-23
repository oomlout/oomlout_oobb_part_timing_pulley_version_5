"""Install this project's reviewed primitive changes in the active OOBB v5."""

import argparse
from pathlib import Path
import shutil

import yaml


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--oobb-root", type=Path, help="Defaults to the directory containing the imported oobb module")
    arguments = parser.parse_args()
    root = arguments.oobb_root
    if root is None:
        import oobb
        root = Path(oobb.__file__).parent
    if not (root / "oobb.py").is_file() or not (root / "components").is_dir():
        raise ValueError(f"Not an OOBB v5 root: {root}")
    source = Path(__file__).parent / "source_file" / "oobb_components"
    for path in sorted(source.rglob("*")):
        if not path.is_file() or "__pycache__" in path.parts:
            continue
        relative = path.relative_to(source)
        destination = root / relative if relative.name == "pulley_gt2.scad" else root / "components" / relative
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(path, destination)
        print(f"Installed {destination}")

    # Add only absent variable definitions; preserve local edits and any future
    # upstream definitions. Keep the additions inside initialize_variables().
    variable_path = root / "oobb_variables.py"
    contents = variable_path.read_text(encoding="utf-8-sig")
    additions = yaml.safe_load((source.parent / "oobb_variable_additions.yaml").read_text(encoding="utf-8"))
    lines = []
    for name, values in additions.items():
        if f'vl["{name}"]' not in contents:
            lines.append(f'    vl["{name}"] = {values!r}')
    if lines:
        anchor = "    for var in vl:"
        if contents.count(anchor) != 1:
            raise ValueError("Cannot safely locate the OOBB variable initialization loop")
        contents = contents.replace(anchor, "    # Timing pulley M4 countersunk additions.\n" + "\n".join(lines) + "\n\n" + anchor)
        variable_path.write_text(contents, encoding="utf-8", newline="\n")
        print(f"Added M4 countersunk variables to {variable_path}")


if __name__ == "__main__":
    main()

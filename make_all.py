"""Build all timing pulleys and refresh their OOBB navigation copies."""

import shutil
from pathlib import Path

import yaml

import working


def main():
    working.main()

    project_root = Path(__file__).parent
    navigation_root = project_root / "navigation_oobb"
    for source in sorted((project_root / "parts").glob("*/working.yaml")):
        with source.open(encoding="utf-8") as handle:
            part = yaml.safe_load(handle)
        details = part.get("oobb_details", {})
        folders = [
            f"oobb_name_{details.get('oobb_name', 'timing_pulley')}",
            f"number_of_teeth_{details.get('number_of_teeth', 'unknown')}",
            f"style_{details.get('style', 'unknown')}",
            f"depth_{details.get('depth', 'unknown')}",
        ]
        destination = navigation_root.joinpath(*folders, source.parent.name)
        destination.mkdir(parents=True, exist_ok=True)
        for item in source.parent.iterdir():
            if item.is_file():
                shutil.copy2(item, destination / item.name)
    print(f"Updated OOBB navigation in {navigation_root}")


if __name__ == "__main__":
    main()

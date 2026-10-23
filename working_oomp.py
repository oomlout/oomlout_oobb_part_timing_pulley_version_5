"""Enrich populated source YAML using OOMP v5, then write parts/working.yaml."""

from pathlib import Path

import oomp
import yaml


def main(**kwargs):
    parts = []
    for path in sorted(Path("parts_source").glob("*/working.yaml")):
        with path.open(encoding="utf-8") as handle:
            option = yaml.safe_load(handle)
        part = oomp.add_part(**option, make_files=True)
        parts.append(part)
    print(f"Enriched {len(parts)} timing pulleys through OOMP")
    return parts


if __name__ == "__main__":
    main()

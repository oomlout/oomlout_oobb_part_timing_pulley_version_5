"""Load dimensions from the same installed primitive used by OOBB dispatch."""

import importlib.util
from pathlib import Path

import oobb


def load(name):
    path = Path(oobb.__file__).parent / "components" / name / "working.py"
    if not path.is_file():
        raise RuntimeError(f"Missing OOBB component {name}. Run python install_oobb_components.py first.")
    spec = importlib.util.spec_from_file_location("pulley_component_" + name, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


timing_pulley = load("oobb_timing_pulley")

#!/usr/bin/env python3

from pathlib import Path
import importlib
from modlinks import *
from typing import List
from types import ModuleType


def load_all_mods(mods_dir: str) -> List[Manifest]:
    mods: List[Manifest] = []
    for py_file in Path(mods_dir).glob("*.py"):
        if py_file.name == "__init__.py":
            continue
        module_name: str = py_file.stem
        module: ModuleType = importlib.import_module(f"{mods_dir}.{module_name}")
        for attr in dir(module):
            if isinstance(getattr(module, attr), Manifest):
                mods.append(getattr(module, attr))
    return mods


if __name__ == "__main__":
    print(load_all_mods("src"))

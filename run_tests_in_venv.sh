#!/usr/bin/env sh
set -euo pipefail

rm -rf venv
python -m venv venv
source venv/bin/activate
pip install . 'coverage[toml]'
coverage run test_example_module.py
coverage report --show-missing

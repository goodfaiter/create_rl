#!/bin/bash

# Activate the virtual environment
# source /.venv/bin/activate

# Instalal tools
# cd /mjlab
# uv pip install -e .

# Install the package in editable mode
# cd /workspace
# uv pip install -e .

# Run the command passed to the container
exec "$@"
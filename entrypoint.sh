#!/bin/bash

# Install the package in editable mode
uv pip install -e workspace/

# Run the command passed to the container
exec "$@"
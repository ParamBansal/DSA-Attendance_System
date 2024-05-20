#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Ensure Python 3.11 is used
PYTHON_VERSION=python3.11

# Create and activate virtual environment
$PYTHON_VERSION -m venv myenv
source myenv/bin/activate

# Upgrade pip and setuptools
pip install --upgrade pip setuptools

# Install dependencies from requirements.txt
pip install -r requirements.txt

# Install dlib from .whl file
pip install dlib-19.24.1-cp311-cp311-win_amd64.whl
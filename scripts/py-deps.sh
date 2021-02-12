#!/bin/sh

set -e

# Load dev dependencies to python virtualenv
py_dev="
    python-language-server
    pylint
    flake8
    bandit
    mypy
    black
    isort
    pytest
"

if [ "$PIPENV_ACTIVE" ]; then
    for dep in ${py_dev}; do
        pipenv install "$dep" --dev --skip-lock
    done
elif [ "$POETRY_ACTIVE" ]; then
    for dep in ${py_dev}; do
        poetry add "$dep" --dev
    done
else
    echo "please activate a virtualenv and rerun"
fi

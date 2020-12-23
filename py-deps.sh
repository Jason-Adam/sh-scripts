#!/usr/bin/env bash

# Load dev dependencies to python virtualenv
py_dev=(
    "pylint" 
    "flake8" 
    "bandit" 
    "mypy" 
    "black" 
    "isort" 
    "pytest" 
    "ipykernel"
)

if [ "$PIPENV_ACTIVE" ]; then
    for i in "${py_dev[@]}"; do
        pipenv install "$i" --dev --skip-lock
    done;
elif [ "$POETRY_ACTIVE" ]; then
    for i in "${py_dev[@]}"; do
        poetry add "$i" --dev 
    done;
else
    echo "please activate a virtualenv and rerun"
fi;

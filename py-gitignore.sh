#!/usr/bin/env bash

# Python Gitignore
gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}

gi python,macos,vim,venv,visualstudiocode,jupyternotebooks,jetbrains > .gitignore;
echo ".python-version/" >> .gitignore;
echo ".vscode/" >> .gitignore;

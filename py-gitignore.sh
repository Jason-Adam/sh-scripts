#!/usr/bin/env bash

# Python Gitignore
gi() { 
    curl -sLw n https://www.gitignore.io/api/$@ ;
}

py-gitignore() {
    gi python,macos,vim,venv,visualstudiocode,jupyternotebooks,jetbrains > .gitignore;
    echo ".python-version/" >> .gitignore;
    echo ".vscode/" >> .gitignore;
}

py-gitignore;

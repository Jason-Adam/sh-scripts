#!/usr/bin/env bash

set -e;

# Create folder if it doesn't exist
mkdir -p ~/bin;

# Symlink all non install shell scripts to bin folder
# Assumes you've cloned repo into ~/code
for f in $(ls | grep '^[^\_]*.sh'); do
    fbname=$(basename "$f" | cut -d. -f1);
    ln -s -f ~/code/sh-scripts/"$f" ~/bin/"$fbname";
done;

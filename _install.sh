#!/bin/sh

set -e

# Create folder if it doesn't exist
mkdir -p "$HOME"/bin

# Symlink all non install shell scripts to bin folder
# Assumes you've cloned repo into ~/code
for file in *.sh; do
    fbname=$(basename "$file" | cut -d. -f1)
    ln -s -f "$HOME"/code/sh-scripts/"$file" "$HOME"/bin/"$fbname"
done

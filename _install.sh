#!/bin/sh

set -e

# Create folder if it doesn't exist
mkdir -p "$HOME"/bin

# Symlink all non install shell scripts to bin folder
# Assumes you've cloned repo into ~/code
for f in scripts/*.sh; do
    fbname=$(basename "$f" | cut -d. -f1)
    ln -s -f "$(pwd)"/"$f" "$HOME"/bin/"$fbname"
done

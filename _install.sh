#!/bin/sh

set -e

# Create folder if it doesn't exist
mkdir -p "$HOME"/bin

# Symlink all non install shell scripts to bin folder
# Assumes you've cloned repo into ~/code
<<<<<<< HEAD
for f in scripts/*.sh; do
    fbname=$(basename "$f" | cut -d. -f1)
    ln -s -f "$(pwd)"/"$f" "$HOME"/bin/"$fbname"
=======
for file in *.sh; do
    fbname=$(basename "$file" | cut -d. -f1)
    ln -s -f "$HOME"/code/sh-scripts/"$file" "$HOME"/bin/"$fbname"
>>>>>>> 7a9821dc0fe5e3374acb205b6e9066ec8d1fe8d6
done

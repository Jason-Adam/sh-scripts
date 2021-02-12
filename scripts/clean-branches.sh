#!/bin/sh

if ! (git rev-parse --is-inside-work-tree); then
    echo "Not inside a git repository, aborting"
    exit 0
fi

git remote prune origin

git branch -r --format "%(refname:lstrip=3)" >remotes
git branch --format "%(refname:lstrip=2)" >locals
grep -xv -f remotes <locals >branchesToDelete

# -w checks word counts to ignore blank lines
if [ "$(wc -w <branchesToDelete)" -gt 0 ]; then
    echo "$(wc -l <branchesToDelete) branches without matching remote found, outputting to editor"
    echo "Waiting for editor to close"
    vim branchesToDelete

    while read -r line; do
        git branch -D "$line"
    done <branchesToDelete
else
    echo "There are no branches to cleanup."
fi

rm branchesToDelete remotes locals

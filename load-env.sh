#!/usr/bin/env bash

# Load Environment variable file for python virtual envs
load-env() {
    set -o allexport \
        && source "$1" \
        && set +o allexport;
}

load-env $1;

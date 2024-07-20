#!/usr/bin/env bash

# get dirname to test
DIR="$1"

if [[ -n "$DIR" ]]; then
    cd ${DIR}
    echo "Directory ${DIR} exists"
fi

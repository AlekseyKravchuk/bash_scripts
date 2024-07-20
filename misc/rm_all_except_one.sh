#!/usr/bin/env bash

# set -x

arr=()
files=$(pwd | ls)

for name in "${files}"; do
    # echo "$name"
    if [ "$name" != 'booking' ]; then
	arr+=("$namep") && echo "$name"
    fi
done

# for name in "$arr[@]"; do
#     # print "${name}"
#     echo "$name"
# done
# echo "${arr[@]}"
# set +x

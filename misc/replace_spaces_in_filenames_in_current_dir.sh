#!/usr/bin/env bash

# Looping over files, forging new filename, and then renaming it.
# Spaces will be replaced by underscores (_).
for old_name in *
do
    # echo "old_name =" "$old_name"
    new_name="$(echo "$old_name" | sed -e 's/ /_/g')"
    
    if [[ "$new_name" != "$old_name" ]]; then
        mv "$old_name" "$new_name"
    fi
done
# Spaces are now underscores

#!/usr/bin/env bash

# Simple note-taking sctipt
# Author: alekskrav

# Start your bash script with
# bash -x ./script.sh
# or add in your script
# set -x to see debug output.

# Set debugging option globally
# set -x

script_dir=$(realpath $(dirname $0)) # Store the absolute path of the script directory in a variable

# Set the topic header of a note using the first script augument
topic="$1"
topic_underscored="$(sed 's/ /_/g' <<< "$1")"
topic_header="Topic: "$topic""
current_date="$(date +"%d.%m.%Y")"
header="######################################## ${current_date} ########################################"

##############################
set -x  # ENABLE debugging

if [[ "$topic" != "" ]]; then
    file_path="${script_dir}/$(date +"%d_%m_%Y")_${topic_underscored}_notes.txt"
else
    file_path="${script_dir}/$(date +"%d_%m_%Y")_notes.txt"
fi

# The -f flag tests whether the provided filename exists and is a regular file.
if ! [[ -f "$file_path" ]]; then
    echo "$header" > "$file_path"
    
    if [[ "$topic" != "" ]]; then
    echo "$header" > "$file_path"
    echo "$topic_header" >> "$file_path"
    fi
fi

set +x  # DISABLE debugging
##############################

read -p "Your note: " note          # Ask user for input: "read" command will read the user input and put it in a variable
echo $(date +"%H:%M:%S"): "$note" >> "$file_path"
echo "Note '$note' was saved to '$file_path'"

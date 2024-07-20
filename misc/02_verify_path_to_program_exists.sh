#!/bin/bash

# Verifiex that a specified program is either valid as is or can be found in the ${PATH} directory list

# Given a command and the PATH, tries to find the command.
# Returns 0 if found and executable; 1 if not.
# This script temporarily modifies the IFS (Internal Field Separator) but restores it upon completion
in_path()
{
    cmd=$1
    prog_path=$2
    result=1
    oldIFS=$IFS
    IFS=":"

    for directory in "${prog_path}"
    do
	if [ -x $directory/$cmd ] ; then
	    result=0
	fi
    done

    IFS=$oldIFS

    if [ result eq 1] ; then
	echo "OK"
    else
	echo "FAIL"
    fi
}

    
in_path()


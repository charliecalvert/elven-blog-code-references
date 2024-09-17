#! /usr/bin/env bash

# This script searches for a string in package.json files
# in the current directory and subdirectories.
# It is useful for finding dependencies in a project.

GREP='grep -r --include=package.json --exclude=bundle.js --exclude-dir=node_modules --exclude-dir=static --exclude-dir=bower_components --exclude-dir=.config --exclude-dir=.mozilla --exclude-dir=.metadata'
C=''
for i in "$@"; do
    C="$C \"${i//\"/\\\"}\""
done

bash -c "${GREP} ${C}"

# echo -e '\nExit Code:' $?

#!/bin/bash

set -euo pipefail

DIRECTORY="/path/to/directory"

if [[ -d "$DIRECTORY" ]]; then
    echo "Listing files in $DIRECTORY:"
    ls -l "$DIRECTORY"
else
    echo "Directory does not exist."
fi

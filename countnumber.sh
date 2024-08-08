#!/bin/bash

set -euo pipefail

DIRECTORY="/path/to/directory"

if [[ -d "$DIRECTORY" ]]; then
    COUNT=$(find "$DIRECTORY" -type f | wc -l)
    echo "Number of files: $COUNT"
else
    echo "Directory does not exist."
fi

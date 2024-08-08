#!/bin/bash

set -euo pipefail

FILE="/path/to/file"

if [[ -f "$FILE" ]]; then
    echo "File exists."
else
    echo "File does not exist."
fi

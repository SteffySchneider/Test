#!/bin/bash

set -euo pipefail

DIRECTORY="/path/to/directory"
DAYS=30

find "$DIRECTORY" -type f -mtime +"$DAYS" -exec rm -f {} +

echo "Files older than $DAYS days have been deleted from $DIRECTORY."

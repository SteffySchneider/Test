#!/bin/bash

set -euo pipefail

DIRECTORY="/path/to/directory"
FIND_TEXT="old_text"
REPLACE_TEXT="new_text"

find "$DIRECTORY" -type f -name "*.txt" -exec sed -i "s/$FIND_TEXT/$REPLACE_TEXT/g" {} +

echo "Text replacement completed."

#!/bin/bash

set -euo pipefail

URL="https://example.com/file.txt"
DESTINATION="/path/to/destination/file.txt"

curl -o "$DESTINATION" "$URL"

echo "File downloaded to $DESTINATION"

#!/bin/bash

set -euo pipefail

LOGFILE="/path/to/logfile.log"
KEYWORD="ERROR"

tail -f "$LOGFILE" | while read -r LINE; do
    if [[ "$LINE" == *"$KEYWORD"* ]]; then
        echo "Keyword '$KEYWORD' found: $LINE"
    fi
done

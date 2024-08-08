#!/bin/bash

set -euo pipefail

THRESHOLD=80
USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if (( USAGE > THRESHOLD )); then
    echo "Warning: Disk usage is above ${THRESHOLD}%"
else
    echo "Disk usage is under control."
fi

#!/bin/bash

set -euo pipefail

THRESHOLD=1000  # in MB
AVAILABLE_MEM=$(free -m | awk '/^Mem:/{print $7}')

if (( AVAILABLE_MEM < THRESHOLD )); then
    echo "Warning: Available memory is below ${THRESHOLD}MB. Only ${AVAILABLE_MEM}MB available."
else
    echo "Memory is sufficient: ${AVAILABLE_MEM}MB available."
fi

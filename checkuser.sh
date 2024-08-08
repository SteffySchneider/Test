#!/bin/bash

set -euo pipefail

USERNAME="someuser"

if id "$USERNAME" &>/dev/null; then
    echo "User '$USERNAME' exists on the system."
else
    echo "User '$USERNAME' does not exist."
fi

#!/bin/bash

set -euo pipefail

SERVICE="ssh"

if systemctl is-active --quiet "$SERVICE"; then
    echo "The $SERVICE service is running."
else
    echo "The $SERVICE service is not running."
fi

#!/bin/bash

set -euo pipefail

SOURCE_DIR="/path/to/source"
BACKUP_DIR="/path/to/backup"
DATE=$(date +%Y%m%d_%H%M%S)
DEST="${BACKUP_DIR}/backup_${DATE}.tar.gz"

mkdir -p "$BACKUP_DIR"
tar -czf "$DEST" -C "$SOURCE_DIR" .

echo "Backup completed successfully: $DEST"

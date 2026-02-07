#!/bin/bash
set -e

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_DIR=/backups/mysql
BACKUP_FILE="$BACKUP_DIR/mysql_$TIMESTAMP.sql.gz"

mkdir -p "$BACKUP_DIR"

mysqldump \
  -h mysql \
  -u root \
  -p"$MYSQL_ROOT_PASSWORD" \
  --single-transaction \
  --all-databases \
  | gzip > "$BACKUP_FILE"

echo "MySQL backup created: $BACKUP_FILE"

#!/bin/bash
BACKUP_DIR="/home/ccm101/backups"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
CONTAINER_NAME="enterprise_db"
DB_USER="root"
DB_PASS="secure_root_password"
DB_NAME="app_db"

mkdir -p "$BACKUP_DIR"

docker exec "$CONTAINER_NAME" /usr/bin/mysqldump -u"$DB_USER" -p"$DB_PASS" "$DB_NAME" > "$BACKUP_DIR/db_backup_$DATE.sql" 2>/dev/null

if [ $? -eq 0 ]; then
  echo "[$DATE] Backup successful: db_backup_$DATE.sql" >> "$BACKUP_DIR/backup.log"
else
  echo "[$DATE] Backup FAILED!" >> "$BACKUP_DIR/backup.log"
fi

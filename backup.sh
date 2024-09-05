#!/bin/bash

BACKUP_DIR="/home/ubuntu/backups"
TIMESTAMP=$(date +"%Y%m%d%H%M")
BACKUP_FILE="$BACKUP_DIR/etcd-backup-$TIMESTAMP.db"

mkdir -p $BACKUP_DIR
#just a reference purpose
sudo k3s etcd snapshot save $BACKUP_FILE

echo "Backup completed: $BACKUP_FILE"

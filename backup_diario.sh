#!/bin/bash

# Ruta del backup
BACKUP_DIR="/var/backups/ldap"
FECHA=$(date +%Y-%m-%d)

# Asegura que el directorio existe
mkdir -p "$BACKUP_DIR"

# Ejecuta la copia
sudo slapcat -l "$BACKUP_DIR/ldap_backup_$FECHA.ldif"


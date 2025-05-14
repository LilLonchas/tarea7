#!/bin/bash

SERVIDOR="juan@192.168.1.100"
RUTA_REMOTA="/var/backups/ldap"
DEST_LOCAL="$HOME/backups_ldap"

mkdir -p "$DEST_LOCAL"

echo "Descargando backups de los últimos 7 días..."

# Buscar archivos recientes y descargarlos con scp
ssh $SERVIDOR "find $RUTA_REMOTA -type f -mtime -7" | while read archivo; do
    scp "$SERVIDOR:$archivo" "$DEST_LOCAL/"
done

echo "Descarga completada."



#!/bin/bash

# Ruta donde se guardan los backups
ORIGEN="/var/backups/ldap"

# Ruta destino simulando el "cliente local"
DESTINO="$HOME/backups_ldap"

# Crear destino si no existe
mkdir -p "$DESTINO"

# Copiar backups de los últimos 7 días
find "$ORIGEN" -type f -mtime -7 -exec cp {} "$DESTINO" \;

echo "Backups copiados a $DESTINO"


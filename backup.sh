#!/bin/bash
# backup.sh - Crea una copia comprimida de una carpeta

SOURCE=$1
DEST=$2

if [ -z "$SOURCE" ] || [ -z "$DEST" ]; then
  echo "Uso: $0 <carpeta_origen> <carpeta_destino>"
  exit 1
fi

DATE=$(date +%Y-%m-%d_%H-%M-%S)
tar -czf "$DEST/backup_$DATE.tar.gz" "$SOURCE"

echo "Backup creado en $DEST/backup_$DATE.tar.gz"

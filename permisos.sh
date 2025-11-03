#!/bin/bash
# permisos.sh - Muestra y cambia permisos

if [ $# -lt 1 ]; then
  echo "Uso: $0 <errores.txt> [nuevo_permiso]"
  exit 1
fi

ls -l "$1"

if [ ! -z "$2" ]; then
  chmod "$2" "$1"
  echo "Permiso cambiado a $2"
  ls -l "$1"
fi

#!/bin/bash
# grep_demo.sh - Busca una palabra en archivos de texto

if [ $# -lt 2 ]; then
  echo "Uso: $0 <palabra> <achivor>"
  exit 1
fi

grep --color=auto -n "$1" "$2"

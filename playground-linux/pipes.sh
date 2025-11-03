#!/bin/bash
# pipes.sh - Ejemplo de tuberías

echo "Lista de usuarios con /bin/bash:"
cat /etc/passwd | grep "/bin/bash" | cut -d: -f1

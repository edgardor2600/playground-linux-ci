#!/bin/bash
# cron_demo.sh - Añade una tarea a cron que muestra la fecha cada minuto

echo "* * * * * date >> ~/cron_log.txt" | crontab -
echo "Tarea añadida a cron. Se guardará la fecha en ~/cron_log.txt cada minuto."

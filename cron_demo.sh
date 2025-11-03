#!/bin/bash
# cron_demo.sh - Simula la ejecución de una tarea programada (cron job)

echo "Simulando la ejecución de la tarea CRON..."
# En un pipeline de CI, no modificamos crontab.
# En su lugar, simulamos la acción que el cron job haría.
echo "Tarea ejecutada en: $(date)" >> cron_simulation_log.txt
echo "Simulación completada. Revisa 'cron_simulation_log.txt' para ver el resultado."

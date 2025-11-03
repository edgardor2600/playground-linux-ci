# Playground Linux - Laboratorio CI/CD y DevOps

## 📋 Descripción
Este es un entorno de laboratorio para aprender conceptos fundamentales de Linux, automatización y despliegue continuo (CI/CD). Los scripts incluidos demuestran patrones esenciales utilizados en pipelines de DevOps.

## 🚀 Scripts Disponibles

### 1. `backup.sh` - Gestión de Artefactos
```bash
./backup.sh <carpeta_origen> <carpeta_destino>
```
**Concepto CI/CD**: Simula la creación de artefactos de build
- **Automatización**: Scripts sin intervención manual
- **Versionado**: Timestamps para tracking de releases
- **Compresión**: Optimización de tamaño para almacenamiento
- **Uso en CI/CD**: Genera backups de builds antes del despliegue

### 2. `permisos.sh` - Control de Acceso
```bash
./permisos.sh <archivo> [nuevo_permiso]
```
**Concepto CI/CD**: Gestión de permisos en despliegues
- **Seguridad**: Control granular de acceso
- **Reproducibilidad**: Mismo estado en todos los ambientes
- **Uso en CI/CD**: Configuración automática de permisos en servidores

### 3. `grep_demo.sh` - Validación y Testing
```bash
./grep_demo.sh <palabra> <archivo>
```
**Concepto CI/CD**: Testing y validación de código
- **Búsqueda**: Detección de patrones problemáticos
- **QA**: Validación de configuraciones
- **Uso en CI/CD**: Buscar errores, vulnerabilidades o patrones específicos

### 4. `cron_demo.sh` - Automatización de Tareas
```bash
./cron_demo.sh
```
**Concepto CI/CD**: Jobs programados y monitoreo
- **Scheduling**: Tareas automáticas recurrentes
- **Monitoreo**: Logging automático
- **Uso en CI/CD**: Builds programados, limpieza de logs, health checks

### 5. `pipes.sh` - Data Pipeline
```bash
./pipes.sh
```
**Concepto CI/CD**: Flujos de datos y procesamiento
- **Pipeline**: Transformación de datos en cadena
- **Eficiencia**: Procesamiento sin archivos intermedios
- **Uso en CI/CD**: Procesamiento de logs, métricas y reportes


### Archivos de Datos
- `log.txt`: Logs de prueba para testing
- `cron_log.txt`: Output de tareas programadas

### Ejemplos de Uso CI/CD

#### Pipeline Stage 1: Build Artifacts
```bash
./backup.sh ./src ./artifacts
# Genera: artifacts/backup_2025-11-03_13-00-09.tar.gz
```

#### Pipeline Stage 2: Deploy with Permissions
```bash
./permisos.sh ./artifacts/backup.tar.gz 755
```

#### Pipeline Stage 3: Validation
```bash
./grep_demo.sh "ERROR" ./log.txt
# Verifica que no hay errores críticos
```

#### Pipeline Stage 4: Monitoring
```bash
./cron_demo.sh
# Configura monitoreo automático
```

## 📚 Próximos Pasos para CI/CD

1. **Integrar con GitHub Actions**: Usar estos scripts como steps
2. **Dockerizar**: Crear containers con estos scripts
3. **Kubernetes**: Implementar como Jobs y CronJobs
4. **Monitoring**: Integrar con Prometheus/Grafana
5. **Secrets Management**: Usar vault para credenciales

## 🏷️ Tags
`#CI/CD` `#DevOps` `#Linux` `#Bash` `#Automation` `#Deployment` `#Testing`

---
**Fecha de creación**: 2025-11-03  
**Enfoque**: Aprendizaje práctico de DevOps y CI/CD
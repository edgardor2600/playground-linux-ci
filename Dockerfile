# Usar una imagen base ligera de Linux
FROM ubuntu:latest

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar todos los archivos del directorio actual al directorio de trabajo del contenedor
COPY . .

# Dar permisos de ejecución a todos los scripts .sh
RUN chmod +x *.sh

# Comando por defecto al iniciar el contenedor
CMD ["bash"]

# Usa la imagen de Python 3
FROM python:3

# Instala git para poder clonar el repositorio
RUN apt-get update && apt-get install -y git

# Clona el repositorio desde GitHub
RUN git clone https://github.com/Lizcastro662/DockerMundoBloques.git /usr/src/app

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Ejecuta el script de Python cuando se inicie el contenedor
CMD ["python", "almacen.py"]



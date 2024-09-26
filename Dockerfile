# Usar una imagen base de Python
FROM python:3.11-buster

# Establecer el directorio de trabajo
WORKDIR /app

# Actualizar pip y luego instalar las dependencias
RUN pip install --upgrade pip && \
    pip install flask

# Copiar el resto de la aplicación
COPY . .

# Exponer el puerto en el que corre la app
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["flask", "app.py", "run", "--host=0.0.0.0"]


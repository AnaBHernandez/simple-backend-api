# Usa una imagen base de Java compatible con tu JDK 21
FROM openjdk:21-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el JAR de tu aplicación al contenedor
# ¡IMPORTANTE! Reemplaza el nombre del JAR si el tuyo es diferente
COPY target/simple-backend-api-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto en el que Spring Boot va a escuchar
# Tu aplicación está configurada para el puerto 5000
EXPOSE 5000

# Comando para ejecutar la aplicación cuando el contenedor se inicia
# Usamos --server.port=5000 para ser explícitos.
CMD ["java", "-jar", "app.jar", "--server.port=5000"]
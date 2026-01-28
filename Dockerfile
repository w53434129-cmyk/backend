# Use a valid Java 17 image
FROM eclipse-temurin:17-jdk-slim
WORKDIR /app

# Copy built jar (to be built by Jenkins)
COPY target/backend.jar .

EXPOSE 8080

CMD ["java", "-jar", "backend.jar"]


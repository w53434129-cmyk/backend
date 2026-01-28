# Use Java 17
FROM openjdk:17-jdk-slim
WORKDIR /app

# Copy built jar (to be built by Jenkins)
COPY target/backend.jar .

EXPOSE 8080

CMD ["java", "-jar", "backend.jar"]

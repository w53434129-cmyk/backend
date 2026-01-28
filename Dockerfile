# Stage 1: Build the JAR
FROM maven:3.9.2-eclipse-temurin-17 AS build
WORKDIR /app

# Copy only the files needed for Maven build
COPY pom.xml .
COPY src ./src

# Build the project
RUN mvn clean package -DskipTests

# Stage 2: Create runtime image
FROM eclipse-temurin:17-jdk
WORKDIR /app

# Copy the JAR from build stage
COPY --from=build /app/target/backend.jar ./backend.jar

# Expose port
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "backend.jar"]



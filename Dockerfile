# Stage 1: Build the application
FROM maven:3.9.6-eclipse-temurin-17 AS build
 
# Set working directory
WORKDIR /app
 
# Copy source code
COPY pom.xml .
COPY src ./src
 
# Build the jar file
RUN mvn clean package -DskipTests
 
# Stage 2: Run the application
FROM openjdk:17-jdk
 
# Set working directory
WORKDIR /app
 
# Copy built jar from the previous stage
COPY --from=build /app/target/*.jar /app/app.jar
 
# Run the jar
CMD ["java", "-jar", "app.jar"]

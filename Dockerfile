# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from target directory (change based on your project name)
COPY target/User-Portal.jar /app/User-Portal.jar

# Expose port 8080 (default for Spring Boot)
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/User-Portal.jar"]

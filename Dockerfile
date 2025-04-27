# Use a Java 17 base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the .jar file into the container
COPY target/MiniProject2-0.0.1-SNAPSHOT.jar /app/application.jar


# Expose the port your app runs on (typically 8080 for Spring Boot)
EXPOSE 8080

# Command to run your application
CMD ["java", "-jar", "application.jar"]

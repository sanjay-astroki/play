# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application JAR file into the container
COPY backend/target/demo-0.0.1-SNAPSHOT.jar /app/demo-0.0.1-SNAPSHOT.jar

# Expose the port your Spring Boot application will listen on
EXPOSE 8080

# Define the command to run your application when the container starts
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]

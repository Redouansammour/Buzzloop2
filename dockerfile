# Use the appropriate base image
FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY ${JAR_FILE} app.jar

# Expose port 8080 to allow outside access
EXPOSE 8080

# Set the entry point command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app.jar"]

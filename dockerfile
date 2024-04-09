FROM openjdk:17-jdk-alpine

# Set the JAR_FILE argument to the location of the JAR file
ARG JAR_FILE=build/libs/*.jar

# Copy the JAR file from the build context into the container
COPY build/libs/*.jar app.jar

# Expose port 8080 to allow outside access
EXPOSE 8080

# Set the entry point command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app.jar"]

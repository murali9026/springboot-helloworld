# Use a lightweight OpenJDK 11 runtime image (upgraded from JDK 8 to 11)
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR from the target folder into the container (adjust the JAR name as needed)
ARG JAR_FILE=target/springboot-helloworld-1.0.0-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# Expose the port your application runs on (default is 8080, adjust if needed)
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "/app/app.jar"]

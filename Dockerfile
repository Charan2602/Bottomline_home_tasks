# Base Image
FROM openjdk:17-jre-slim


# Directory in the container
WORKDIR /app

# Copy the JAR file
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Port on which the application is running
EXPOSE 9090

# Start the container
CMD ["java", "-jar", "app.jar"]
	
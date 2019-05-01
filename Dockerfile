
# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
MAINTAINER Daniel Oldenburg <daniel_oldenburg16@yahoo.de>

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 9119 available to the world outside this container
EXPOSE 9119

# The application's jar file
ARG JAR_FILE=target/app-1.0.0.jar

# Add the application's jar to the container
ADD ${JAR_FILE} app-1.0.0.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app-1.0.0.jar"]

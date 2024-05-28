FROM openjdk:17
EXPOSE 8080
# Create a temporary directory and copy the contents of the target directory into it
RUN mkdir -p /tmp/target && cp -R ./target/. /tmp/target/

# List the contents of the temporary target directory
RUN ls -la /tmp/target/

# Copy the application's JAR file from the temporary directory to the container
COPY /tmp/target/demo-docker-0.0.1.jar demo-docker-0.0.1.jar
ENTRYPOINT ["java","-jar","/demo-docker-0.0.1.jar"]
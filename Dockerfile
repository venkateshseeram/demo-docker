FROM openjdk:17
EXPOSE 8080
RUN ls -la target
COPY target/demo-docker-0.0.1.jar demo-docker-0.0.1.jar
ENTRYPOINT ["java","-jar","/demo-docker-0.0.1.jar"]
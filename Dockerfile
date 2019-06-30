FROM openjdk:8-jdk-alpine
LABEL maintainer="surendrachereddy18@gmail.com"
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/crud-1.0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} websocket-demo.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/websocket-demo.jar"]

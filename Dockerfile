FROM openjdk:18-jdk-slim

RUN apt-get update && apt-get install -y curl

RUN mkdir /app
WORKDIR /app
RUN curl -o my-app.jar -L https://packages.jetbrains.team/maven/p/writerside/maven/com/jetbrains/writerside/writerside-ci-checker/1.0/writerside-ci-checker-1.0.jar

ENTRYPOINT ["java", "-jar", "writerside-ci-checker-1.0.jar"]
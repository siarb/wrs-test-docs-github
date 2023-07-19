FROM openjdk:18-jdk-slim

RUN apt-get update && apt-get install -y curl

RUN mkdir /app
WORKDIR /app
RUN curl -o wrs-doc-app.jar -L https://packages.jetbrains.team/maven/p/writerside/maven/com/jetbrains/writerside/writerside-ci-checker/1.0/writerside-ci-checker-1.0.jar

RUN ls -la /app
RUN ls -la /github/workspace/artifacts
RUN chmod +x wrs-doc-app.jar

ENTRYPOINT ["java", "-jar", "/app/wrs-doc-app.jar"]
FROM openjdk:11-jre-slim
RUN adduser --system --group spring
USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT sleep 4 && java -jar /app.jar

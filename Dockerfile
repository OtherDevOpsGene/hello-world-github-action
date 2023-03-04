FROM eclipse-temurin:17-jammy
ARG JAR_FILE=target/*.jar
WORKDIR /
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

EXPOSE 8080
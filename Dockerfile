FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY C:/Users/user/Downloads/myfoods/target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080
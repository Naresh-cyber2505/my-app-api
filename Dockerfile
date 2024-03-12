FROM eclipse-temurin:17-jdk-alpine
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
COPY --from=build /Users/user/Downloads/myfoods/target/war_name.war app.war
ENTRYPOINT ["java","-jar","/app.war"]
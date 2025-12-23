FROM eclipse-temurin:17-jre-alpine

WORKDIR /usr/app

# Copy whatever JAR Gradle produced
COPY build/libs/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]

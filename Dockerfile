FROM openjdk:17
RUN mvn clean package -DskipTests
RUN mkdir app
WORKDIR /app
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]

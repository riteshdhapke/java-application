#Docker file for General Spring Boot Exercise
FROM openjdk:8
RUN mkdir springapp
WORKDIR /springapp
ADD target/java-springboot-2.0.0-SNAPSHOT.jar java-springboot-2.0.0-SNAPSHOT.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "java-springboot-2.0.0-SNAPSHOT.jar"]

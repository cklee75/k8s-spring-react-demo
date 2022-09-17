FROM openjdk:8u141-jre

COPY target/demo-0.0.1-SNAPSHOT.jar /demo-deployment.jar

EXPOSE 8080/tcp

ENTRYPOINT ["java", "-jar", "/demo-deployment.jar"]
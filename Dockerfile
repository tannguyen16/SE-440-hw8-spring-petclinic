# Set the base image to OpenJDK 8 JRE
FROM openjdk:8u282-jre

# Expose port 8080/tcp for the container
EXPOSE 8080/tcp

# Copy the Spring PetClinic JAR file to the root directory
ADD target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar .

# Set the entrypoint to run the JAR when the container is started
ENTRYPOINT ["java", "-jar", "spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar"]
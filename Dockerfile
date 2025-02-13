#  Stage 2: Use a minimal base image to run the application
FROM amazoncorretto:17-alpine-jdk

# Add metadata
LABEL author="Pratik"

LABEL project="Spring Pet Clinic"

RUN mkdir /spc && chown nobody /spc

USER nobody

WORKDIR /spc

# Copy the packaged artifact from the target directory
COPY target/*.jar /spc/spring-petclinic.jar

EXPOSE 8080

CMD ["java", "-jar", "spring-petclinic.jar"] 
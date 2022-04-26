FROM maven:latest AS build-stage
COPY . /build
WORKDIR /build
RUN mvn clean package -DskipTests -q

FROM openjdk:11 AS runtime
WORKDIR /opt/petclinic
COPY --from=build-stage /build/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
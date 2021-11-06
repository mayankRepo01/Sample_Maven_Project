#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
WORKDIR /App
COPY src ./App/src
COPY pom.xml ./App/
RUN mvn -f ./App/pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build ./App/target/Pipeline_Maven_Project-0.0.1-SNAPSHOT.jar .

FROM openjdk:8

EXPOSE 8080

WORKDIR /usr/src/app

COPY .mvn ./.mvn
COPY src ./src
COPY pom.xml ./
COPY mvnw ./
copy mvnw.cmd ./
RUN ./mvnw package
CMD  java -jar ./target/docker-example-1.1.3.jar


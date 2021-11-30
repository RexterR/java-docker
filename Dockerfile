FROM maven:3.6.0-jdk-11-slim AS build

COPY src /home/app/src

COPY pom.xml /home/app

RUN mvn -f /home/app/pom.xml clean package


#
# Package stage
#
FROM tomcat:8.5.73-jdk11-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

COPY --from=build /home/app/target/accessing-data-mysql-complete-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh","run"]
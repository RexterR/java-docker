FROM openjdk:11

COPY ./target/accessing-data-mysql-complete-0.0.1-SNAPSHOT.jar accessing-data-mysql-complete-0.0.1-SNAPSHOT.jar

CMD ["java","-jar","accessing-data-mysql-complete-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080
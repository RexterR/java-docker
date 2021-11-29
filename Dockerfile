FROM tomcat:8.0

RUN rm -rf /usr/local/tomcat/webapps/*

COPY ./target/accessing-data-mysql-complete-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/myapp.war

# CMD ["catalina.sh","run"]

EXPOSE 8080
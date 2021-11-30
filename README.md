# Basic Spring Project On Ticketing Service deployed on Docker Compose


### Tools Used 
- java 11
- Maven
- Spring Boot
- Spring Cloud
- Spring Microservice
- Tomcat
- MySQL
- JDBC
- Docker

### Features
1. REST API open to do ticketing Operation
2. Built Using Maven, Gradle Optional
3. Completely Dockerized to deploy in Production using Tomcat

## REST API Endpoints

- Creating Ticket

```bash
curl -XPOST 'localhost:8080/ticket/add?name=Ind VS NZ&desc=India vs Newzealand Test match at Kanpur&price=5000'
```
- Get List of all ticket

```bash
curl -XGET 'localhost:8080/ticket/all'
```
Response:
![image](https://user-images.githubusercontent.com/59254445/144066335-579e8db8-816b-4963-bf1b-e49bc5474e48.png)

## Docker Initalization

To run The Project Install Docker then run `docker compose up`

## Deploy to docker swarm

1. Initalize Docker Swarm
```bash
docker swarm init 
```
2. Deploy Docker Compose to Docker Swarm using `Docker Stack` command
```bash
docker stack deploy --compose-file=docker-compose.yml spring_sql
```
To fetch prebuilt image 
```bash
docker pull rdsuman/jav
```
[Docker Hub Image](https://hub.docker.com/repository/docker/rdsuman/jav)

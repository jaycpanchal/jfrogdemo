# syntax=docker/dockerfile:1
FROM anapsix/alpine-java
LABEL maintainer="jaycpanchal@gmail.com" 
COPY /target/spring-petclinic-2.7.0-SNAPSHOT.jar /container/spring-petclinic-2.7.0-SNAPSHOT.jar
CMD ["java","-jar","/container/spring-petclinic-2.7.0-SNAPSHOT.jar"]

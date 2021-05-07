# Challenge API Dockerfile

FROM adoptopenjdk/openjdk11:latest
WORKDIR /home/centos
ADD challenge-api-0.1.0.jar challenge-api-0.1.0.jar
ADD tomcat.p12 tomcat.p12
EXPOSE 8443
CMD java -jar challenge-api-0.1.0.jar

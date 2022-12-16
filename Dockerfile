FROM tomcat:latest
LABEL maintainer="pavan kumar"
RUN apt-get update -y && apt-get install vim -y
ADD ./target/Practical3-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]

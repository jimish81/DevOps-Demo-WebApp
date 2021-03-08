from tomcat:8.0.20-jre8

RUN mkdir /usr/local/tomcat/webapps/myApp

COPY target/AVNCommunication-1.0.war /usr/local/tomcat/webapps/myApp/Dockerdemo.war

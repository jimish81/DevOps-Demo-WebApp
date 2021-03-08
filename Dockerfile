from tomcat:8.0.20-jre8

COPY target/AVNCommunication-1.0.war /usr/local/tomcat/webapps/Dockerdemo.war

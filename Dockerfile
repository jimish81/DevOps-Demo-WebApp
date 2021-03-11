from jimish22/tomcat-postgres:v1
RUN service postgresql restart
COPY target/AVNCommunication-1.0.war /usr/local/tomcat/webapps/QAWebapp.war

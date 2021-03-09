from jimish22/tomcat-postgres
COPY Postgresql-Install-1.sh /usr/local/tomcat/Postgresql-Install-1.sh
RUN bash Postgresql-Install-1.sh
COPY target/AVNCommunication-1.0.war /usr/local/tomcat/webapps/QAWebapp.war
CMD ["catalina.sh", "run"]

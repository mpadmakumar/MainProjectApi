
FROM tomcat:10.1-jdk21-openjdk


RUN rm -rf /usr/local/tomcat/webapps/*


COPY MainProjectApis1.1.war /usr/local/tomcat/webapps/ROOT.war


EXPOSE 8080


CMD ["catalina.sh", "run"]


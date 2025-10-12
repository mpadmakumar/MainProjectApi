
FROM tomcat:10.1-jdk21-openjdk

# Default webapps remove (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file and rename to ROOT.war
COPY target/MainProjectApis.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080

# Run Tomcat
CMD ["catalina.sh", "run"]
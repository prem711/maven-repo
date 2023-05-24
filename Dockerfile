FROM tomcat:latest

RUN wget -O /usr/local/tomcat/webapps/ROOT.war http://3.145.105.221:8081/repository/maven-snap/com/jdevs/studentapp/2.5-SNAPSHOT/studentapp-2.5-20230524.061426-1.war

# Expose the port used by the web server (e.g., 8080)
EXPOSE 8090

# Start the web server
CMD ["catalina.sh", "run"]

FROM tomcat:latest

RUN wget -O /usr/local/tomcat/webapps/ROOT.war  http://3.138.204.32:8081/repository/maven-snapshots//com/jdevs/studentapp/2.5-SNAPSHOT/studentapp-2.5-20230526.024453-1.war

# Expose the port used by the web server (e.g., 8080)
EXPOSE 3000

# Start the web server
CMD ["catalina.sh", "run"]

FROM tomcat:latest

# Install wget
RUN yum update && yum install -y wget
RUN rm -rf /usr/local/tomcat/webapps/*
# Download the .war file from Nexus using wget and save as ROOT.war
RUN wget -O /usr/local/tomcat/webapps/ROOT.war http://3.109.207.222:8081/repository/maven-snap/com.jdev/studentapp/2.5-SNAPSHOT/studentapp-1.war

# Expose the port used by the web server (e.g., 8080)
EXPOSE 8080

# Start the web server
CMD ["catalina.sh", "run"]

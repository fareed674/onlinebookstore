# Use a base image with Tomcat and JDK
FROM tomcat:9.0-jdk11

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Add your WAR to the webapps folder
COPY target/onlinebookstore.war /usr/local/tomcat/webapps/onlinebookstore.war

EXPOSE 8080

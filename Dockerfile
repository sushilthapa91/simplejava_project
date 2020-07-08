#FROM tomcat:8.0

#MAINTAINER cusel

# COPY {path-to-your-application-war} {path-to-webapps-in-docker-tomcat}
#RUN rm -fr /usr/local/tomcat/webapps/ROOT
#WORKDIR /usr/local/tomcat/bin
#COPY ./ROOT.war  /usr/local/tomcat/webapps/ROOT.war


#CMD ["sh /usr/local/tomcat/bin/shutdown.sh", "sh /usr/local/tomcat/bin/startup.sh"]
FROM tomcat:8.0

MAINTAINER cusel

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/javaee7-simple-sample.war /usr/local/tomcat/webapps/javaee7-simple-sample.war

EXPOSE 8080
CMD ["catalina.sh","run"]

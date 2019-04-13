FROM tomcat:9

MAINTAINER falcor <tomasz.blazejowski@unit8.co>

ENV ENVIRONMENT=production

COPY target/forms-in-spring-mvc-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/myapp.war
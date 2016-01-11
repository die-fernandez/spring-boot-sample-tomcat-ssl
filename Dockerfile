FROM java:8
VOLUME /tmp
ADD target/spring-boot-sample-tomcat-ssl-1.3.1.RELEASE.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

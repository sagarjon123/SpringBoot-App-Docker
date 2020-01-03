FROM java:8
VOLUME /tmp

#Providing label to our container so that it can be used to stop the container instead of using containerID
LABEL appname=springboot

#Copying the jar file to app.jar
ADD ./target/demo-0.0.1-SNAPSHOT.jar app.jar

RUN bash -c 'touch /app.jar'

#The container launched using this image will be running jar file on specified port.
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

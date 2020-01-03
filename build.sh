#!/bin/bash


#stopping and removing the already running container since we want to run the newly pulled image on the  same port
docker kill $(docker ps --filter "label=appname=springboot" -q)


#removing the previous image to remove redundancy
docker rmi -f ndabas333/java-app:latest

#building a new image and pushing it to dockerhub
docker build -t ndabas333/java-app:latest .
docker push ndabas333/java-app:latest


#pulling the latest image
docker pull ndabas333/java-app:latest


#running on port 8080 on detached mode
docker run -d -p 3333:8080  ndabas333/java-app:latest

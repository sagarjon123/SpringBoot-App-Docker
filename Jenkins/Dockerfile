#this is the base image we use to create our image from
FROM jenkins:2.60.1

#automatically installing all plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh $(cat /usr/share/jenkins/plugins.txt | tr '\n' ' ')
        

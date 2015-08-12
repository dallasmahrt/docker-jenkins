FROM jenkins

USER root
RUN apt-get update -y && apt-get install --no-install-recommends -qy curl build-essential ca-certificates git mercurial
    
COPY plugins.txt /usr/share/jenkins/ref/

USER jenkins
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt


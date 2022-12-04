FROM jenkins/jenkins:lts

USER jenkins

COPY plugins.txt /usr/share/jenkins/ref/

## RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

RUN git config --global http.sslVerify false

RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt

RUN rm -rf /usr/share/jenkins/ref/plugins.txt

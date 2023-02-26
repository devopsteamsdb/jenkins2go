FROM jenkins/jenkins:lts

USER jenkins

COPY plugins.txt /usr/share/jenkins/ref/

# OLD PLUGINS METHOD
#### RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

RUN git config --global http.sslVerify false

RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt

RUN jenkins-plugin-cli --plugins kubernetes:3842.v7ff395ed0cf3

RUN rm -rf /usr/share/jenkins/ref/plugins.txt

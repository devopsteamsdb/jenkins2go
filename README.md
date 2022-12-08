# jenkins2go

to test the docker image use this command:


docker run -p 80:8080 -p 50000:50000 devopsteamsdb/devopsteamsdb:jenkins2go_latest

via https://labs.play-with-docker.com


### From your machine

mkdir /dockerData/jenkins/

chown 1000:1000 /dockerData/jenkins/

docker run -d -p 80:8080 -p 50000:50000 --name jenkins --restart=unless-stopped --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v /dockerData/jenkins:/var/jenkins_home devopsteamsdb/devopsteamsdb:jenkins2go_latest


enjoy

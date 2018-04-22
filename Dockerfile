FROM openshift/jenkins-2-centos7

### Install Docker
RUN curl https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz | tar xvz -C /tmp/ && mv /tmp/docker/docker /usr/bin/docker

COPY entrypoint.sh /usr/local/bin/

ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/entrypoint.sh"]

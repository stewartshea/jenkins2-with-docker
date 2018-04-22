FROM openshift/jenkins-2-centos7

### Install Docker
RUN curl -fsSL --create-dirs --output /usr/local/bin/docker \
        "https://get.docker.com/builds/$(uname -s)/$(uname -m)/docker-${DOCKER_VERSION}" \
 && chmod +x /usr/local/bin/docker


USER 1001
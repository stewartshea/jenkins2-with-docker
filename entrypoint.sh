#!/usr/bin/env bash

#DOCKER_SOCKET=/var/run/docker.sock
DOCKER_GROUP=docker

# echo "currently $(id) switch to ${JENKINS_USER}"

if [ -S ${DOCKER_SOCKET} ]; then

    if ! id -u ${JENKINS_USER} > /dev/null 2>&1; then
      #echo "adding jenkins use for uid ${JENKINS_USER}"
      userdel jenkins
      adduser -u ${JENKINS_USER} -D -S jenkins
    fi
    DOCKER_GID=$(stat -c '%g' ${DOCKER_SOCKET})
    #echo "adding ${DOCKER_GID} to group ${DOCKER_GROUP}"
    groupadd -for -g ${DOCKER_GID} ${DOCKER_GROUP}
    usermod -aG ${DOCKER_GROUP} jenkins
fi

# echo "Starting /usr/local/bin/jenkins.sh as ${JENKINS_USER}"

su-exec ${JENKINS_USER} /usr/local/bin/jenkins.sh
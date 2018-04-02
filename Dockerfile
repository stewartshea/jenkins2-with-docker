FROM openshift/jenkins-2-centos7

USER root

RUN set -x \
  && yum -y install docker


USER 1001
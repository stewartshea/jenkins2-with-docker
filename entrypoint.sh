#!/bin/bash

export KUBECONFIG=$HOME/kube

oc login --token $DOCKER_PASSWORD $OPENSHIFT_URL --insecure-skip-tls-verify
cat $KUBECONFIG


#!/bin/bash

export KUBECONFIG=$HOME/workspace/kube

oc login --token $DOCKER_PASSWORD $OPENSHIFT_URL --insecure-skip-tls-verify
cat $KUBECONFIG


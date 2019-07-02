#!/bin/bash

export KUBECONFIG=$HOME/kube

oc login --token $DOCKER_PASSWORD $OPENSHIFT_URL 
cat $KUBECONFIG


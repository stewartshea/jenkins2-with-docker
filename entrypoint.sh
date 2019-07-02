#!/bin/bash

oc login --token $DOCKER_PASSWORD $OPENSHIFT_URL 
cat ~/.kube/config
mkdir -p $HOME/.kube
cp ~/.kube/config $HOME/.kube/config

#!/bin/bash

# Step 1
# 'latest' can replace 'v1.21.0', because mirror is not updating.
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# Step 2
# Sometimes install failed, you may delete all.
minikube delete --all

# Step 3
# vm install, add '--driver=none'
# mirror needs, add "--image-mirror-country='cn'", it present get images from alibaba k8s mirror.
minikube start --driver=none --image-mirror-country='cn'


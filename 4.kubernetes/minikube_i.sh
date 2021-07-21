#!/bin/bash
#####################################
# Step 1
# 'latest' can replace 'v1.21.0', because mirror is not updating.
#####################################
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

#####################################
# Step 2
# Sometimes install failed, you may delete all.
#####################################
minikube delete --all

#####################################
# Step 3
# vm install, add '--driver=none'
# mirror needs, add "--image-mirror-country cn", it present get images from alibaba k8s mirror.
#####################################
minikube start --driver=none --image-mirror-country cn

#####################################
# Step 4
# fix boot issue
# 'storage-provisioner' image url not correct.
#####################################
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/storage-provisioner:v5
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/storage-provisioner:v5 registry.cn-hangzhou.aliyuncs.com/google_containers/k8s-minikube/storage-provisioner:v5

minikube addons enable storage-provisioner

#####################################
# Step 5
# enable nginx ingress
# images also not correct, tag it.
#####################################
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/nginx-ingress-controller:v0.44.0
docker tag registry.cn-hangzhou.aliyuncs.com/google_containers/nginx-ingress-controller:v0.44.0 registry.cn-hangzhou.aliyuncs.com/google_containers/ingress-nginx/controller:v0.44.0

docker pull jettech/kube-webhook-certgen:v1.5.1
docker tag jettech/kube-webhook-certgen:v1.5.1 registry.cn-hangzhou.aliyuncs.com/google_containers/docker.io/jettech/kube-webhook-certgen:v1.5.1

minikube addons enable ingress

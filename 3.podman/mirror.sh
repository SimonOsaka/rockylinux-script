#!/bin/bash
echo "unqualified-search-registries = [\"docker.io\", \"quay.io\", \"k8s.gcr.io\"]" > /etc/containers/registries.conf

echo "[[registry]]" >> /etc/containers/registries.conf
echo "prefix = \"docker.io\"" >> /etc/containers/registries.conf
echo "location = \"docker.mirrors.ustc.edu.cn\"" >> /etc/containers/registries.conf

echo "[[registry]]" >> /etc/containers/registries.conf
echo "prefix = \"quay.io\"" >> /etc/containers/registries.conf
echo "location = \"quay.mirrors.ustc.edu.cn\"" >> /etc/containers/registries.conf

echo "[[registry]]" >> /etc/containers/registries.conf
echo "prefix = \"k8s.gcr.io\"" >> /etc/containers/registries.conf
echo "location = \"registry.aliyuncs.com/google_containers\"" >> /etc/containers/registries.conf

#!/bin/bash
echo "unqualified-search-registries = [\"docker.io\", \"k8s.gcr.io\"]" > /etc/containers/registries.conf

echo "[[registry]]" >> /etc/containers/registries.conf
echo "prefix = \"docker.io\"" >> /etc/containers/registries.conf
echo "location = \"hub-mirror.c.163.com\"" >> /etc/containers/registries.conf

echo "[[registry]]" >> /etc/containers/registries.conf
echo "prefix = \"k8s.gcr.io\"" >> /etc/containers/registries.conf
echo "location = \"registry.aliyuncs.com/google_containers\"" >> /etc/containers/registries.conf

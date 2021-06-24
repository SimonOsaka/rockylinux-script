#!/bin/bash
sudo yum install -y yum-utils

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce

sudo systemctl start docker

sudo systemctl enable docker

echo "{" > /etc/docker/daemon.json
echo "\"registry-mirrors\": [\"https://docker.mirrors.ustc.edu.cn\"]" >> /etc/docker/daemon.json
echo "}" >> /etc/docker/daemon.json

sudo systemctl restart docker

docker info

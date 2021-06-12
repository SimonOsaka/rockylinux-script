#!/bin/bash
podman pull docker.io/nginx:stable-alpine

mkdir -p /data/nginx/html

echo "success test!!!" > /data/nginx/html/test.html

podman run -it --name nginx_podman --privileged=true -p 80:80 -v /data/nginx/html:/usr/share/nginx/html -d docker.io/nginx:stable-alpine

podman ps

curl localhost/test.html

rm -rf /data/nginx/html/test.html

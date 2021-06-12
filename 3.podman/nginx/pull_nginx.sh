#!/bin/bash
podman pull docker.io/nginx:stable-alpine

mkdir /data/nginx/html

echo "<b>success test!!!</b>" >> /data/nginx/html/test.html

podman run -it --name nginx_podman --privileged=true -p 80:80 -v /data/nginx/html:/usr/share/nginx/html -d nginx

podman ps

curl localhost/test.html



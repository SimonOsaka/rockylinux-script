#!/bin/bash
podman pull docker.io/nginx:stable-alpine

mkdir -p /data/nginx/html
mkdir -p /data/nginx/log
mkdir -p /data/nginx/conf
mkdir -p /data/nginx/conf.d

echo "success test!!!" > /data/nginx/html/test.html

podman run -it --name nginx_podman \
--privileged=true \
-p 80:80 \
-d docker.io/nginx:stable-alpine

podman cp nginx_podman:/etc/nginx/nginx.conf /data/nginx/conf
podman cp nginx_podman:/etc/nginx/conf.d /data/nginx/conf.d

sh rm_nginx.sh

podman run -it --name nginx_podman \
--privileged=true \
-p 80:80 \
-v /data/nginx/html:/usr/share/nginx/html \
-v /data/nginx/log:/var/log/nginx \
-v /data/nginx/conf/nginx.conf:/etc/nginx/nginx.conf \
-v /data/nginx/conf.d:/etc/nginx/conf.d \
-d docker.io/nginx:stable-alpine

podman ps

curl localhost/test.html

rm -rf /data/nginx/html/test.html

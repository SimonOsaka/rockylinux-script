#!/bin/bash
sh pull_nginx.sh

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
podman cp nginx_podman:/etc/nginx/conf.d /data/nginx

sh rm_nginx.sh

sh run_nginx.sh

podman ps

curl localhost/test.html

rm -rf /data/nginx/html/test.html

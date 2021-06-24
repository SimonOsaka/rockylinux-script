#!/bin/bash
sh pull_nginx.sh

mkdir -p /data/nginx/html
mkdir -p /data/nginx/log
mkdir -p /data/nginx/conf
mkdir -p /data/nginx/conf.d

echo "success test!!!" > /data/nginx/html/test.html

docker run -it --name nginx_server \
--privileged=true \
-p 80:80 \
-d nginx:stable-alpine

docker cp nginx_server:/etc/nginx/nginx.conf /data/nginx/conf
docker cp nginx_server:/etc/nginx/conf.d /data/nginx

sh rm_nginx.sh

sh run_nginx.sh

docker ps

curl localhost/test.html

rm -rf /data/nginx/html/test.html

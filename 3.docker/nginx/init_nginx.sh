#!/bin/bash

mkdir -p /data/nginx/html
mkdir -p /data/nginx/log
mkdir -p /data/nginx/conf

cp nginx.conf /data/nginx/conf
cp conf.d -r /data/nginx

sh run_nginx.sh

sh show_nginx.sh

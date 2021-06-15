#!/bin/bash
podman run -itd --name etcd_server_podman \
-p 2379:2379 \
-p 2380:2380 \
-e ALLOW_NONE_AUTHENTICATION=yes \
-e ETCD_CONFIG_FILE=/etcd_conf/etcd.conf.yml \
-v /data/etcd/data:/opt/etcd:z \
-v /data/etcd/conf/etcd.conf.yml:/etcd_conf/etcd.conf.yml:z \
quay.io/coreos/etcd:v3.5.0



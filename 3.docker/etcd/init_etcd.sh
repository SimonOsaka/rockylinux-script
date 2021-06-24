#!/bin/bash
mkdir -p /data/etcd/conf
mkdir -p /data/etcd/data

cp etcd.conf.yml /data/etcd/conf

sh run_etcd.sh

sh show_etcd.sh

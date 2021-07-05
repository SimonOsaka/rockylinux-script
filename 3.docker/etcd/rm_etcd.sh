#!/bin/bash
sh stop_etcd.sh

docker-compose -p etcd_server down

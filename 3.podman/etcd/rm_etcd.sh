#!/bin/bash
sh stop_etcd.sh

podman rm etcd_server_podman

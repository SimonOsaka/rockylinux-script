#!/bin/bash
mkdir -p /data/drone/data
mkdir -p /data/drone/docker
sh run_drone.sh

sh show_drone.sh

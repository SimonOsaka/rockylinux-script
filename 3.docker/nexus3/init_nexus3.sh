#!/bin/bash
mkdir -p /data/nexus3/data
chown -R 200 /data/nexus3/data

sh run_nexus3.sh

sh show_nexus3.sh

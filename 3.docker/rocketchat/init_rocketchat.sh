#!/bin/bash
mkdir -p /data/rocketchat/db
mkdir -p /data/rocketchat/uploads
mkdir -p /data/rocketchat/hubot/scripts

sh run_rocketchat.sh

sh show_rocketchat.sh

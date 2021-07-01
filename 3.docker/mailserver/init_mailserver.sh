#!/bin/bash
mkdir -p /data/mailserver/maildata
mkdir -p /data/mailserver/mailstate
mkdir -p /data/mailserver/maillogs
mkdir -p /data/mailserver/config

sh run_mailserver.sh

sh show_mailserver.sh

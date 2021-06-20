#!/bin/bash
mkdir -p /data/jira/postgres/data
mkdir -p /data/jira/data

sh run_jira.sh

sh show_jira.sh

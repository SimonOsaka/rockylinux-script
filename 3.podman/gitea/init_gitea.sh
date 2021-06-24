#!/bin/bash

mkdir -p /data/gitea/data
mkdir -p /data/gitea/postgres/data

sh run_gitea.sh

sh show_gitea.sh

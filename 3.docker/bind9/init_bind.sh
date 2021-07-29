#!/bin/bash

mkdir -p /data/bind/data/bind/etc

cp named.conf /data/bind/data/bind/etc

sh run_bind.sh

sh show_bind.sh

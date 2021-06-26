#!/bin/bash
mkdir -p /data/minio/data
mkdir -p /data/minio/conf

sh run_minio.sh

sh show_minio.sh

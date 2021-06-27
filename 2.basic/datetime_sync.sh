#!/bin/bash
sed -e 's|^pool 2.pool.ntp.org iburst|# pool 2.pool.ntp.org iburst|g' \
    -e '/# pool 2.pool.ntp.org iburst/a\pool ntp.aliyun.com iburst' \
    -i.bak \
    /etc/chrony.conf

systemctl enable chronyd
systemctl restart chronyd

timedatectl

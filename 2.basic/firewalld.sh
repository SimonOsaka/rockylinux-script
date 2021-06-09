systemctl start firewalld.service

systemctl status firewalld.service

systemctl enable firewalld.service

firewall-cmd --list-ports

firewall-cmd --add-port=80/tcp --permanent

firewall-cmd --add-port=443/tcp --permanent

firewall-cmd --list-ports

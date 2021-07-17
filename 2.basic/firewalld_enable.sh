systemctl start firewalld.service

systemctl enable firewalld.service

firewall-cmd --state

firewall-cmd --list-ports

firewall-cmd --add-port=80/tcp --permanent

firewall-cmd --add-port=443/tcp --permanent

firewall-cmd --reload

firewall-cmd --list-ports

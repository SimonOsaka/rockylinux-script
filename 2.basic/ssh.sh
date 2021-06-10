vi /etc/ssh/sshd_config

# Port 8888
# PermitRootLogin yes
# PasswordAuthentication yes

semanage port -a -t ssh_port_t -p tcp 8888

systemctl enable sshd.service

cp -av /usr/lib/firewalld/services/ssh.xml /usr/lib/firewalld/services/ssh_8888.xml
# port="8888" 

firewall-cmd --permanent --remove-service=ssh

firewall-cmd --permanent --add-service=ssh_8888

firewall-cmd --reload

firewall-cmd --list-all

systemctl restart sshd.service

systemctl status sshd.service

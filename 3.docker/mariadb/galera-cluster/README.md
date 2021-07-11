## How to use mariadb galera
- If galera node boot fail, restart the node. it seems node nums > 2 will cause boot fail.
- If boot success, all node can write and read. One node write, other node will sync.
- Client connects ip-proxysql:6032, done.

## How to use rw-split
### in proxysql.cnf
#### connect proxysql
- Run `mysql -h proxysql-host -P6033 -u my_user -p`.
- Input password: `my_password`, connect success!

#### 1 master, 2 slaves
- Read form master, slave1 and slave2.
- Write to master.

> master failed, switch slave to master do not support.

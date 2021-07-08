## How to use postgres replication
- Run `docker exec -it master bash`.
- Run `psql -h localhost -U my_user -d my_database --password`.
- input password: `my_password`.
- insert a row to master. slave1 and slave2 will sync.

## postgres ha repmgr pgpool
### How to use docker-compose
#### initial
- Run `sh init_postgres.sh` only once.
- postgres ha will start.
- Any details see `init_postgres.sh`.

#### stop
- Run `sh stop_postgres.sh` will stop instance.

#### start
- Run `sh start_postgres.sh` will start instance.

#### remove
- Run `sh rm_postgres.sh` will stop and remove instance.

#### upgrade
- Remove `sh rm_postgres.sh` and run `sh run_postgres.sh`.

#### detail
- Run `sh show_postgres.sh` to see detail.

### How to use postgres ha
#### pgpool nodes
1. `docker exec -it postgres_pgpool bash`
2. `psql -h localhost -U customuser -d customdatabase --password`
3. input password: `custompassword`
4. `show pool_nodes;`

##### reattach node
- `pcp_attach_node -h localhost -U admin 0 --password`
- input password: `adminpassword`
- `0` present id of node will reattach.

## postgres ha repmgr pgpool
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

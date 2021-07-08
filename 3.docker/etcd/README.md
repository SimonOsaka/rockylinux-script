## How to use etcd
1. Run.
2. Run `docker exec -it etcd bash`.
3. add a key named 'k1' value '111': `etcdctl put k1 111`.
4. get key 'k1': `etcdctl get k1`, value is '111'.

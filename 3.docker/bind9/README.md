## bind9 && webmin
- docker image source: [docker-bind(github)](https://github.com/DSFInc/docker-bind)
### bind9
- run
### webmin
- open browser with url: http://docker-ip:10000
- when added master zone and address, apply it.
- check dns: `dig @docker-ip domain`(ex: `dig @192.168.10.1 demo.example.com`)

# haproxy SSL renewal

Add following line into your haproxy.cfg


## frontend section:
```
acl letsencrypt-acl path_beg /.well-known/acme-challenge/# haproxy SSL renewal
```
## backend section: 
```
backend letsencrypt-backend
    server letsencrypt 127.0.0.1:8888
```

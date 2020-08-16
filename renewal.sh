#!/bin/bash
certbot renew --force-renewal --tls-sni-01-port=8888
for dir in  /etc/letsencrypt/live/*/;do
        name=$(echo "$dir" | cut -d'/' -f 5)
    echo $name
    cat "$dir"fullchain.pem "$dir"privkey.pem > "/etc/haproxy/ssl/$name/fullchain.pem"
done


FROM haproxy:1.6-alpine

RUN apk update && apk add wget ca-certificates

RUN wget --quiet https://github.com/jwilder/dockerize/releases/download/v0.2.0/dockerize-linux-amd64-v0.2.0.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.2.0.tar.gz

COPY haproxy.tmpl /usr/local/etc/haproxy/haproxy.tmpl

CMD dockerize -template /etc/dockerize/haproxy.tmpl:/usr/local/etc/haproxy/haproxy.cfg haproxy

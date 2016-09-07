# docker-minimal-haproxy

A very minimal dockerized haproxy that reads backends from environment variables.

## requirements

- docker

## use

Run the following command:


```
docker run -d --name haproxy -p 80:80 -e BACKENDS=test-1.com,test-2.com noqcks/haproxy
```


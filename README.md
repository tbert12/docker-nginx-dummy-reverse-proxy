# Simple dummy reverse proxy

#### How to use
```bash
$ docker run -e PROXY_TO=host-to-proxy.com -p 8080:80 -p 4431:443 tbert/nginx-dummy-reverse-proxy
$ PROXY_TO=host-to-proxy.com docker-compose up # docker-compose.yml of the repor
```

#### TODO's
- [ ] By sub-location
- [ ] Check https

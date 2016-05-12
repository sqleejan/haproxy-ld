# Haproxy-ld

Haproxy-ld is A haproxy with Active discovery for backend services.Depends on Docker DNS

lightweight, simple...

## Why not directly use round-robin DNS?

There are a few reasons:
There is a long history of DNS libraries not respecting DNS TTLs and caching the results of name lookups.

*Many apps do DNS lookups once and cache the results.

*Even if apps and libraries did proper re-resolution, the load of every client re-resolving DNS over and over would be difficult to manage.

*Performance.

## Intention


## Example

1.docker run -d --net=global-network --net-alias=ldtest --name=web1 emilevauge/whoami

2.docker run -d --net=global-network --net-alias=ldtest --name=web2 emilevauge/whoami

3.sudo docker run --name=ld --net=global-network -p 8080:80 haproxy-ld -net-alias=ldtest
 
 
 type "curl http://localhost:8080"  to test it
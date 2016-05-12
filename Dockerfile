FROM haproxy:1.6
RUN mkdir -p /usr/local/etc/haproxy
COPY ./haproxy.cfg 	/usr/local/etc/haproxy/haproxy.cfg
COPY ./tmp.cnf /tmp.cnf
COPY ./superV /bin/
ENTRYPOINT ["superV"]
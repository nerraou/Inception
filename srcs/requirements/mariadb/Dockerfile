FROM alpine:3.17

RUN apk add --no-cache mariadb mariadb-client

# RUN  mariadb-install-db --user=mysql --datadir=/var/lib/mysql

COPY ./tools/entrypoint.sh /tmp/

COPY ./conf/conf.cnf /etc/my.cnf

EXPOSE 3306

ENTRYPOINT ["/tmp/entrypoint.sh"]

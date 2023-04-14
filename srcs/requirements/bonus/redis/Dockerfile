FROM alpine:3.17

RUN apk add redis

COPY ./conf/redis-conf /etc/redis.conf

CMD ["redis-server", "/etc/redis.conf"]

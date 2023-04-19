FROM alpine:3.17

RUN apk update \
    && apk add nginx

COPY ./tools/not-ca.crt /etc/ssl/certs
COPY ./tools/not-ca.key /etc/ssl/certs


COPY ./conf/nginx-config.conf /etc/nginx/http.d/default.conf

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

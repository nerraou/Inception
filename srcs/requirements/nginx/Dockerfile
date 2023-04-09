FROM alpine:3.17

RUN apk update \
    && apk add nginx

COPY ./conf/wordpress.conf  /etc/nginx/http.d/default.conf

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

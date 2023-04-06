FROM alpine:3.17

RUN apk update \
    && apk add nginx

CMD cp ./conf/nginx.conf  /etc/nginx/

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

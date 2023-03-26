FROM alpine:3.14

RUN apk update \
    && apk add nginx

EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

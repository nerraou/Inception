FROM alpine:3.17

RUN apk add npm

RUN npm i -g redis-commander

COPY ./tools/entrypoint.sh /tmp

ENTRYPOINT ["sh", "/tmp/entrypoint.sh"]

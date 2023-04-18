FROM alpine:3.17

RUN apk add npm

RUN npm i -g redis-commander

CMD ["redis-commander", "--redis-port=6379", "--redis-host=redis"] 
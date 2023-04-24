#!/bin/sh

while true; do
	ping=$(echo "PING" | nc $REDIS_HOST $REDIS_PORT 2> /dev/null | tr -d "\r\n")

	if [ "$ping" = "+PONG" ]; then
		break
	fi
	echo "couldn't connect, redis service is not ready yet..."
	sleep 2
done

redis-commander --redis-port=$REDIS_PORT --redis-host=$REDIS_HOST

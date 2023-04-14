
DOCKER_COMPOSE_PATH=./srcs/docker-compose.yml

run: $(DOCKER_COMPOSE_PATH)
	docker compose -f $^ up -d

build: $(DOCKER_COMPOSE_PATH)
	docker compose -f $^ build

start: $(DOCKER_COMPOSE_PATH)
	docker compose -f $^ start

re-build: $(DOCKER_COMPOSE_PATH)
	docker compose -f $^ up -d --build

stop: $(DOCKER_COMPOSE_PATH)
	docker compose -f $^ stop

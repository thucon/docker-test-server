DOCKER_FILE   = dockerfile
REGISTRY      = thucon/docker-test-server

CONTAINER_NAME  = test-server

.PHONY: clean all

###################
# STANDARD COMMANDS
###################
all: build

build:
	docker build --no-cache -t $(REGISTRY) -f $(DOCKER_FILE) .

clean:
	docker rmi -f $(REGISTRY)

push:
	docker push $(REGISTRY)

run:
	docker run \
		-d \
		-p 80:80 \
		--restart always \
		--name $(CONTAINER_NAME) \
		$(REGISTRY)

shell:
	docker exec -it $(CONTAINER_NAME) sh

logs:
	docker logs $(CONTAINER_NAME) -f

stop:
	docker stop $(CONTAINER_NAME)
	docker rm --force $(CONTAINER_NAME)

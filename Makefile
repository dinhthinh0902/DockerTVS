user_name := $(shell whoami)
user_id := $(shell id -u $(user_name))
proj_name = $(user_name)
current_dir := $(shell pwd)
source_dir := $(shell cd $(current_dir); pwd)

.PHONY: all init shell
all: init

init: Dockerfile
	docker-compose -p $(proj_name) build

# build:
# 	docker-compose -p $(proj_name) run -u $(user_name) builder

shell:
	docker run -it -e USER=$(user_name)  -v $(source_dir)/../Quectel_Android_9:/code/SIN-TMC267343   $(user_name)_builder bash

Dockerfile: Dockerfile.template
	sed 's/<USER_NAME>/$(user_name)/g' Dockerfile.template | \
	sed -e 's/<USER_ID>/$(user_id)/g' > Dockerfile

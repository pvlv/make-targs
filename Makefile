PROJECT_NAME := make-targs
APP_DIR := app
WORK_DIR := /data

NODE_MODULES_DIR := node_modules
NODE_CACHE_DIR := $$HOME/.node6-cache:/root/.npm
NODE_DOCKER_IMAGE := node:6.5

PORT :=

help:
	@echo "docker_container"
	@echo "$(NPM)"
	@echo "$(WATCHLOG)"
	@echo "in"
	@echo "exec_in"

include targets/docker_container.mk
include targets/watchlog.mk
include targets/npm.mk
include targets/in.mk
include targets/exec_in.mk
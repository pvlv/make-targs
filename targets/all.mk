PROJECT_NAME := make-targs
APP_DIR := app
WORK_DIR := /data

NODE_MODULES_DIR := node_modules
NODE_CACHE_DIR := $$HOME/.node6-cache:/root/.npm
NODE_DOCKER_IMAGE := node:6.5

TARGETS_PATH := node_modules/make-targs/targets

PORT :=

help:
	@echo "docker_container"
	@echo "$(NPM)"
	@echo "$(WATCHLOG)"
	@echo "in"
	@echo "exec_in"

include $(TARGETS_PATH)/docker_container.mk
include $(TARGETS_PATH)/watchlog.mk
include $(TARGETS_PATH)/npm.mk
include $(TARGETS_PATH)/in.mk
include $(TARGETS_PATH)/exec.mk
include $(TARGETS_PATH)/exec_in.mk

PROJECT_NAME := make-targs
APP_DIR := app
DCWORK_DIR := /data
WATCHLOG_DIR := build/log

NODE_MODULES_DIR := node_modules
NODE_CACHE_DIR := $$HOME/.node6-cache:/root/.npm
NODE_DOCKER_IMAGE := node:6.5

TARGETS_PATH := node_modules/make-targs/targets

PORT := 5757:5757

-include $(TARGETS_PATH)/help.mk

#! _docker_container   Используется как зависимость для запуска других таргетов
#!                     info: make _docker_container_info
-include $(TARGETS_PATH)/docker_container.mk

#! _watchlog           Для инкрементальной установки/сборки
#!                     info: make _watchlog_info
-include $(TARGETS_PATH)/watchlog.mk

#! _npm_install        Загрузить npm зависимости
#!                     info: make _npm_install_info
-include $(TARGETS_PATH)/npm_install.mk

#! _in                 Запустить контейнер c bash в интерактивном режиме
#!                     info: make _in_info
-include $(TARGETS_PATH)/in.mk

#! _exec               Используется как зависимость таргетов 
#!                     для подключения к запущенному контейнеру
#!                     info: make _exec_info
-include $(TARGETS_PATH)/exec.mk

#! _exec_in            Подключиться к запущенному контейнеру in
#!                     info: make _exec_in_info
-include $(TARGETS_PATH)/exec_in.mk

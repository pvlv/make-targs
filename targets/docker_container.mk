#!
#! _docker_container:
#! Для создания docker контейнера
#!
#! ?DCFLAGS (default, --rm)
#! - опции для запуска контейнера
#! ?DCNAME
#! - имя для нового контейнера
#! ?DCLINK
#! - линк с другим контейнером
#! ?DCPORT
#! - проброс порта из контейнера в локальный хост
#! ?DCCMD
#! - выполнить команду при запуске контейнера
#! 
#! ---
#! подробнее: https://docs.docker.com/engine/reference/commandline/run/

DCFLAGS := --rm
DCNAME :=
DCLINK :=
DCPORT := 
DCCMD :=

_docker_container:
	@docker run $(DCFLAGS) \
		$(if $(filter $(DCNAME), $(DCNAME)), --name $(PROJECT_NAME)_$(DCNAME)) \
		-v $(CURDIR):$(DCWORK_DIR) \
		-v $(NODE_CACHE_DIR) \
		-w $(DCWORK_DIR) \
		$(if $(filter $(DCLINK), $(DCLINK)), --link $(DCLINK)) \
		$(if $(filter $(DCPORT), $(DCPORT)), -p $(DCPORT)) \
		$(NODE_DOCKER_IMAGE) \
		$(DCCMD)

_docker_container_info:
	@grep -e "^#!" $(TARGETS_PATH)/docker_container.mk | cut -c3-
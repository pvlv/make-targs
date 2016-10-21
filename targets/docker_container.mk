DCFLAGS := --rm
DCNAME :=
DCLINK :=
DCPORT := 
DCCMD :=

_docker_container:
	@docker run $(DCFLAGS) \
		$(if $(filter $(DCNAME), $(DCNAME)), --name $(PROJECT_NAME)_$(DCNAME)) \
		-v $(CURDIR):$(WORK_DIR) \
		-v $(NODE_CACHE_DIR) \
		-w $(WORK_DIR) \
		$(if $(filter $(DCLINK), $(DCLINK)), --link $(DCLINK)) \
		$(if $(filter $(DCPORT), $(DCPORT)), -p $(DCPORT)) \
		$(NODE_DOCKER_IMAGE) \
		$(DCCMD)

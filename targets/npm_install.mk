$(WATCHLOG_DIR)/$(NODE_MODULES_DIR): $(WLG) package.json
	@docker run --rm \
		-v $(CURDIR):$(DCWORK_DIR) \
		-v $(NODE_CACHE_DIR) \
		-w $(DCWORK_DIR) \
		$(NODE_DOCKER_IMAGE) \
		npm install
	@touch $@

_npm_install: $(WATCHLOG_DIR)/$(NODE_MODULES_DIR)
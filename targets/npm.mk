NPM = $(WATCHLOG)/$(NODE_MODULES_DIR)

$(NPM): $(WLG) package.json
	@docker run --rm \
		-v $(CURDIR):$(WORK_DIR) \
		-v $(NODE_CACHE_DIR) \
		-w $(WORK_DIR) \
		$(NODE_DOCKER_IMAGE) \
		npm install
	@touch $@

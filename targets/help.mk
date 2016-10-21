help:
	@echo "-------------------------------------"
	@echo " *** INFO ***\n"
	@echo " PROJECT_NAME: $(PROJECT_NAME)"
	@echo " APP_DIR: $(APP_DIR)"
	@echo " DCWORK_DIR: $(DCWORK_DIR)"
	@echo " WATCHLOG_DIR: $(WATCHLOG_DIR)"
	@echo " NODE_DOCKER_IMAGE: $(NODE_DOCKER_IMAGE)"
	@echo " PORT: $(PORT) \n"
	@echo " *** HELP ***\n"
	@grep -e "^#!" $(TARGETS_PATH)/all.mk | cut -c3-
	@echo "-------------------------------------"
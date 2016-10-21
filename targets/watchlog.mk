LOG_FILE := log
WLG := $(WATCHLOG_DIR)/$(LOG_FILE)

$(WLG):
	@mkdir -p $(WATCHLOG_DIR)
	@touch $@

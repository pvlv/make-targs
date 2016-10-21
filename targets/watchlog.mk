LOG_FILE := log

$(WATCHLOG_DIR)/$(LOG_FILE):
	@mkdir -p $(WATCHLOG_DIR)
	@touch $@

_watchlog: $(WATCHLOG_DIR)/$(LOG_FILE)
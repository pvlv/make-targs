#!
#! Таргет, который создает лог файл (нужен для инкрементальной установки/сборки)
#!

LOG_FILE := log
WLG := $(WATCHLOG_DIR)/$(LOG_FILE)

$(WLG):
	@mkdir -p $(WATCHLOG_DIR)
	@touch $@

_watchlog_info:
	@grep -e "^#!" $(TARGETS_PATH)/watchlog.mk | cut -c3-
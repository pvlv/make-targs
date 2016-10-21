WATCHLOG := build/log
LOG_FILE := log
WLG := $(WATCHLOG)/$(LOG_FILE)

$(WLG):
	@mkdir -p $(WATCHLOG)
	@touch $@

_wlg: $(WLG)
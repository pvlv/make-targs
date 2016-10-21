#!
#! _exec_in:
#! Таргет для подклюнения к запущенном контейнеру,
#! который запущен был с помощью таргета "in"
#!

_exec_in: TO_DCNAME := $(PROJECT_NAME)_in
_exec_in: DCCMD := bash
_exec_in: _exec

_exec_in_info:
	@grep -e "^#!" $(TARGETS_PATH)/exec_in.mk | cut -c3-
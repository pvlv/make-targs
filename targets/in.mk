#!
#! _in:
#! Таргет для запуска контейнера в интерактивном режиме
#! 

_in: DCFLAGS := --rm -it
_in: DCNAME := in
_in: DCPORT := $(PORT)
_in: DCCMD := bash
_in: _docker_container

_in_info:
	@grep -e "^#!" $(TARGETS_PATH)/in.mk | cut -c3-
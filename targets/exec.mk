#!
#! _exec:
#! Для подклюнения к запущенном контейнеру
#! 
#! *TO_DCNAME
#! - имя контейнера к которому нужно подключиться
#! *DCCMD
#! - выполнить команду при запуске контейнера
#! 
#! ---
#! подробнее: https://docs.docker.com/engine/reference/commandline/exec/

_exec:
	@docker exec -it $(TO_DCNAME) $(DCCMD)

_exec_info:
	@grep -e "^#!" $(TARGETS_PATH)/exec.mk | cut -c3-
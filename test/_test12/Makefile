current_dir = $(notdir $(shell pwd))

test: script zshrc zshrc.result ../data
	cd .. && ./bin/runtest.zsh $(current_dir) "$(VERBOSE)" "$(DEBUG)"
	if [ "$(NODIFF)" = "" -a ! -f skip ]; then cd ..; diff $(current_dir)/zshrc.result $(current_dir)/zshrc.test; exit $$?; fi
	@echo

test%: ../_test%/zshrc ../_test%/script ../data
	cd .. && ./bin/runtest.zsh _$@ "$(VERBOSE)" "$(DEBUG)"
	if [ "$(NODIFF)" = "" -a ! -f skip ]; then cd ..; diff _$@/zshrc.result _$@/zshrc.test; exit $$?; fi
	@echo

../data: ../../crasis ../../-zcrasis-process-buffer
	make -C .. prepare

clean:
	rm -f zshrc.test *.txt

.PHONY: test clean

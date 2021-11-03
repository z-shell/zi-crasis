all: test

test: test1 test2 test3 test4 test5 test6 test7 test8 test9 test10 test11 test12 \
      test13 test14 test15 test16 test17 test18 test19 test20 test21 test22 test23 \
      test24

prepare: ../crasis ../-zcrasis-process-buffer
	cp ../crasis .
	rm -rf data
	./bin/zsd-transform -q crasis
	mv zsdoc/data .
	rm -rf zsdoc
	cp ../-zcrasis-process-buffer data/functions/crasis
	./bin/get-body-part.pl > data/test_body

test%: _test%/zshrc _test%/script data
	./bin/runtest.zsh _$@ "$(VERBOSE)" "$(DEBUG)"
	if [ "$(NODIFF)" = "" -a ! -f _$@/skip ]; then diff _$@/zshrc.result _$@/zshrc.test; exit $$?; fi
	@echo

data: ../crasis ../-zcrasis-process-buffer
	make prepare

clean:
	rm -rf -- data zsdoc crasis
	rm -f _test*/zshrc.test _test*/*.txt _test*/*token* _test*/skip

.PHONY: all test prepare clean

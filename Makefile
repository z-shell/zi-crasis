all: zi-crasis.plugin.zsh.zwc crasis.zwc functions/-zcrasis-process-buffer.zwc \
themes/default.cr-theme.zwc themes/zdharma.cr-theme.zwc themes/zdharma-256.cr-theme.zwc \
themes/safari-256.cr-theme.zwc themes/forest-256.cr-theme.zwc themes/blue-256.cr-theme.zwc \
themes/clean-256.cr-theme.zwc test

%.zwc : %
	share/zcompile -- $<

test:
	make VERBOSE=$(VERBOSE) NODIFF=$(NODIFF) DEBUG=$(DEBUG) -C test test

doc: crasis
	rm -rf zsdoc/data zsdoc/*.adoc
	zsd -v --cignore '(\#*FUNCTION:*{{{*|\#[[:space:]]#}}}*)' --fpath `pwd` crasis

clean:
	rm -f -- zi-crasis.plugin.zsh.zwc crasis.zwc functions-zcrasis-process-buffer.zwc
	rm -rf zsdoc/data

.PHONY: all clean

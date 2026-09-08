.PHONY: test.txt

test.txt:
	@rm -f $@
	for f in $(FILES); do (cat "$$f"; echo) >> $@; done

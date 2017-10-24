.PHONY: install tags

install:
	bin/install

tags:
	git tag -l --sort=v:refname

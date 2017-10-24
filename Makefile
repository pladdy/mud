.PHONY: tags install

install:
	bin/install

tags:
	git tag -l --sort=v:refname

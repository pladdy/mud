.PHONY: tags install

install:
	bin/install_deps

tags:
	git tag -l --sort=v:refname

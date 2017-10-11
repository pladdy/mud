.PHONY: tags

tags:
	git tag -l --sort=v:refname

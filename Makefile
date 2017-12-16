.PHONY: install new-tag tag tags

last_version = $(shell git tag --sort=-v:refname | head -n 1)
version_list = $(subst ., ,$(last_version))
major = $(firstword $(version_list))
minor = $(word 2, $(version_list))
patch = $(lastword $(version_list))

install:
	bin/install

new-tag:
ifndef $(type)
	@echo Specify 'type' as major, minor, or patch
endif
ifeq ("$(type)","major")
	$(eval bump = $(shell echo $(major) + 1 | bc))
	$(eval new_version = $(shell echo $(bump).$(minor).$(patch)))
endif
ifeq ("$(type)","minor")
	$(eval bump = $(shell echo $(minor) + 1 | bc))
	$(eval new_version = $(shell echo $(major).$(bump).$(patch)))
endif
ifeq ("$(type)","patch")
	$(eval bump = $(shell echo $(patch) + 1 | bc))
	$(eval new_version = $(shell echo $(major).$(minor).$(bump)))
endif

tag: new-tag
ifdef $(type)
	@echo making tag $(new_version)
	git tag -a $(new_version) -m '$(new_version)'
endif

tags:
	git tag --sort=-v:refname

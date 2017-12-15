.PHONY: install tags

last_tag := $(shell git tag --sort=-taggerdate | head -n 1)
major=$(shell cut -d . -f 1 $last_tag)

install:
	bin/install

tag:
	@last_tag=$$(git tag --sort=-taggerdate | head -n 1); \
	 major=$$(echo $$last_tag | cut -d . -f 1); \
	 minor=$$(echo $$last_tag | cut -d . -f 2); \
	 patch=$$(echo $$last_tag | cut -d . -f 3); \
	 echo $$last_tag; \
	 echo $$major; \
	 echo $$minor; \
	 echo $$patch;


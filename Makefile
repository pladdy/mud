.PHONY: install new-tag tag tags

# For windows gitbash, set MSYS_NO_PATHCONV=1  to avoid path conversion
DOCKER_RUN = MSYS_NO_PATHCONV=1 docker run --name mud-client -v "$(pwd):/opt/mud" --rm -it pladdy/mud:latest
TINTIN_VERSION = 2.02.42

last_version = $(shell git tag --sort=-v:refname | head -n 1)
version_list = $(subst ., ,$(last_version))
major = $(firstword $(version_list))
minor = $(word 2, $(version_list))
patch = $(lastword $(version_list))

all: tintin install

archive-logs:
ifndef ym
	$(error Usage: 'make $@ ym=<yyyy-mm> (eg: 2024-03))
endif
	tar -vzc -f logs/$(ym)-3k-session.logs.gz logs/$(ym)-*-3k-session.log
	rm logs/$(ym)-*-3k-session.log

archive-list:
ifndef ym
	$(error Usage: 'make $@ ym=<yyyy-mm> (eg: 2024-03))
endif
	tar -tf logs/$(ym)-3k-session.logs.gz

bin/english-word-list.txt:
	curl -s https://www.wordgamedictionary.com/english-word-list/download/english.txt -o $@

container: docker-build
	-docker run --name mud-client -v .:/opt/mud -it pladdy/mud:latest /bin/bash
	-docker rm mud-client

docker-build:
	docker build . -t pladdy/mud:latest

install:
	bin/install

more:
	more -R 3k_session.log

# this seems over the top... TODO: find a simpler way?
new-tag:
ifndef type
	$(error Usage: make $@ type=<type>; 'type' one of major, minor, or patch)
endif
ifeq ("$(type)","major")
	$(eval bump = $(shell echo $(major) + 1 | bc))
	$(eval new_version = $(shell echo $(bump).0.0))
endif
ifeq ("$(type)","minor")
	$(eval bump = $(shell echo $(minor) + 1 | bc))
	$(eval new_version = $(shell echo $(major).$(bump).0))
endif
ifeq ("$(type)","patch")
	$(eval bump = $(shell echo $(patch) + 1 | bc))
	$(eval new_version = $(shell echo $(major).$(minor).$(bump)))
endif

play: docker-build
ifndef player
	$(error Usage: 'make $@ player=<your player profile>')
endif
	-$(DOCKER_RUN) /bin/bash ./play $(player)

player:
ifndef player
	$(error Usage: 'make $@ player=<player name> guild=<guild>')
endif
ifndef guild
	$(error Usage: 'make $@ player=<player name> guild=<guild>')
endif
	-$(DOCKER_RUN) /bin/bash ./bin/create_profile $(player) $(guild)

release:
	git push && git push --tags

tag: new-tag
ifdef type
	@echo making tag $(new_version)
	git tag -a $(new_version) -m '$(new_version)'
endif

tags:
	@git tag --sort=-v:refname

tintin:
	wget https://downloads.sf.net/tintin/tintin-$(TINTIN_VERSION).tar.gz
	tar -zxvf tintin-$(TINTIN_VERSION).tar.gz
	cd tt/src && ./configure && make install

test:
	bin/tests/monster_name_test

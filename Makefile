NAME := git-create
FILENAME := $(NAME)
VERSION := 0.1.0
DESCRIPTION := "Create Repository and clone via ghq"


build:
	@NAME=$(NAME) VERSION=$(VERSION) HASH=$(shell make hash) DESCRIPTION=$(DESCRIPTION) FILE=$(FILENAME) erb formula/formula.erb > formula/$(NAME).rb
.PHONY: build

release:
	git commit -am "Bump up to $(VERSION)"
	git tag -a v$(VERSION) -m "Release v$(VERSION)"
	git push origin --tags
	hub release create -a $(FILENAME) $(VERSION)
.PHONY: release

test:
	brew audit --strict formula/$(NAME).rb
.PHONY: test

hash:
	@shasum -a 256 $(FILENAME) | cut -d' ' -f 1
.PHONY: hash

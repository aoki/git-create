NAME := git-create
FILENAME := $(NAME)
VERSION := 0.4.0
DESCRIPTION := "Create Repository and clone via ghq"


formula:
	@NAME=$(NAME) VERSION=$(VERSION) HASH=$(shell make hash) DESCRIPTION=$(DESCRIPTION) FILE=$(FILENAME) erb formula/formula.erb > formula/$(NAME).rb
	brew audit --strict formula/$(NAME).rb
	cd formula && git commit -am "Bump up to $(VERSION)" && git tag -a v$(VERSION) -m "Release v$(VERSION)" && git push origin master && git push origin --tags
.PHONY: formula

release:
	git commit -am "Bump up to $(VERSION)"
	git tag -a v$(VERSION) -m "Release v$(VERSION)"
	git push origin master
	git push origin --tags
	hub release create -a $(FILENAME) v$(VERSION)
.PHONY: release

hash:
	@shasum -a 256 $(FILENAME) | cut -d' ' -f 1
.PHONY: hash

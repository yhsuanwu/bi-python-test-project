SHELL := /bin/bash
TAG    = ${TAG_NAME}
TAG   ?= $(shell git rev-parse HEAD)


.PHONY: test
test:
    $(info Make: Building docker images: TAG=${TAG})
SHELL := /bin/bash
TAG_NAME   ?= $(shell git rev-parse HEAD)


.PHONY: test
test:
    $(info Make: Building docker images: TAG=${TAG_NAME})
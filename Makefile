SHELL := /bin/bash
TAG_NAME   ?= $(shell git rev-parse HEAD)


.PHONY: test
test:
    $(info Make: Building docker images: TAG=${TAG_NAME})

.PHONY: run
run:
    $(info Make: Bring local docker cluster up)
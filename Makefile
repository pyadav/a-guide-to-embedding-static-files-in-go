GOVERSION := $(shell go version | cut -d ' ' -f 3 | cut -d '.' -f 2)

.PHONY: build check fmt lint test test-race vet test-cover-html help install proto ui
.DEFAULT_GOAL := build
PROTON_COMMIT := "d6e14c68d5a661d2a517613de560342c1cf2cea6"

ui:
	@echo " > generating ui build"
	@cd ui && $(MAKE) 

build: ui
	CGO_ENABLED=0 go build -o embedder .

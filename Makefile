.DEFAULT_GOAL:=help
SHELL:=/bin/bash
GO111MODULE=on

LIB_BIN=$(GOPATH)/bin/runner

build:
	GO111MODULE=off go build -o $(LIB_BIN) .

build-clean:
	rm $(LIB_BIN)

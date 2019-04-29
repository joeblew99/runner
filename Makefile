.DEFAULT_GOAL:=help
SHELL:=/bin/bash
GO111MODULE=on

LIB_BIN=$(GOPATH)/bin/runner

build-mod:
	GO111MODULE=on go build -o $(LIB_BIN) .

build:
	GO111MODULE=off go build -o $(LIB_BIN) .

build-clean:
	rm $(LIB_BIN)

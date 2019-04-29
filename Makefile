.DEFAULT_GOAL:=help
SHELL:=/bin/bash
GO111MODULE=on

LIB_BIN=$(GOPATH)/bin/runner


help:  ## Display this help
	# from: https://suva.sh/posts/well-documented-makefiles/
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)


build: ### build
	# Does not build with goModules. Not impportant
	GO111MODULE=off go build -o $(LIB_BIN) .

build-clean: ### build-clean
	rm $(LIB_BIN)

travis-open: ### travis-open
	open https://travis-ci.org/joeblew99/runner/

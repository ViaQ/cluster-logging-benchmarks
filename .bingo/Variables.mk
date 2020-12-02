# Auto generated binary variables helper managed by https://github.com/bwplotka/bingo v0.2.3. DO NOT EDIT.
# All tools are designed to be build inside $GOBIN.
GOPATH ?= $(shell go env GOPATH)
GOBIN  ?= $(firstword $(subst :, ,${GOPATH}))/bin
GO     ?= $(shell which go)

# Bellow generated variables ensure that every time a tool under each variable is invoked, the correct version
# will be used; reinstalling only if needed.
# For example for embedmd variable:
#
# In your main Makefile (for non array binaries):
#
#include .bingo/Variables.mk # Assuming -dir was set to .bingo .
#
#command: $(EMBEDMD)
#	@echo "Running embedmd"
#	@$(EMBEDMD) <flags/args..>
#
EMBEDMD := $(GOBIN)/embedmd-v1.0.0
$(EMBEDMD): .bingo/embedmd.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOBIN)/embedmd-v1.0.0"
	@cd .bingo && $(GO) build -mod=mod -modfile=embedmd.mod -o=$(GOBIN)/embedmd-v1.0.0 "github.com/campoy/embedmd"

GINKGO := $(GOBIN)/ginkgo-v1.14.0
$(GINKGO): .bingo/ginkgo.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOBIN)/ginkgo-v1.14.0"
	@cd .bingo && $(GO) build -mod=mod -modfile=ginkgo.mod -o=$(GOBIN)/ginkgo-v1.14.0 "github.com/onsi/ginkgo/ginkgo"

GOLANGCI_LINT := $(GOBIN)/golangci-lint-v1.33.0
$(GOLANGCI_LINT): .bingo/golangci-lint.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOBIN)/golangci-lint-v1.33.0"
	@cd .bingo && $(GO) build -mod=mod -modfile=golangci-lint.mod -o=$(GOBIN)/golangci-lint-v1.33.0 "github.com/golangci/golangci-lint/cmd/golangci-lint"

PROMETHEUS := $(GOBIN)/prometheus-v2.4.3+incompatible
$(PROMETHEUS): .bingo/prometheus.mod
	@# Install binary/ries using Go 1.14+ build command. This is using bwplotka/bingo-controlled, separate go module with pinned dependencies.
	@echo "(re)installing $(GOBIN)/prometheus-v2.4.3+incompatible"
	@cd .bingo && $(GO) build -mod=mod -modfile=prometheus.mod -o=$(GOBIN)/prometheus-v2.4.3+incompatible "github.com/prometheus/prometheus/cmd/prometheus"


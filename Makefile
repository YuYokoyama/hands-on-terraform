SHELL := /bin/bash
.DEFAULT_GOAL := help
.PHONY: $(shell egrep -o ^[a-zA-Z_-]+: $(MAKEFILE_LIST) | sed 's/://')
SOURCE_DIR := $(CURDIR)

init: ## initialize project 
	@cd $(SOURCE_DIR) && \
	terraform init 

deploy: ## deploy resource 
	@cd $(SOURCE_DIR) && \
	terraform apply -auto-approve 

test: ## test deploying
	@cd $(SOURCE_DIR) && \
	terraform plan

format: ## format .tf
	@cd $(SOURCE_DIR) && \
	terraform fmt

destroy: ## destroy resource
	@cd $(SOURCE_DIR) && \
	terraform destroy

console: ## try terraform expressions at cli
	@cd $(SOURCE_DIR) && \
	terraform console

help: ## print this help
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

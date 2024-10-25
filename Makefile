M = $(shell printf "\033[34;1m▶\033[0m")

.PHONY: help
help: ## Prints this help message
	@grep -E '^[a-zA-Z_-]+:.?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

######################
### MAIN FUNCTIONS ###
######################

.PHONY: start
start: ## Start the Microcks docker container
	$(info $(M) Starting an instance of Microcks at : http://microcks.local.io/)
	@docker-compose -f ./docker/docker-compose.yml up -d

.PHONY: dev-start
dev-start: ## Start the Microcks docker container
	$(info $(M) Starting an instance of Microcks devmode at : http://microcks.local.io/)
	@docker-compose -f ./docker/docker-compose-devmode.yml up -d

.PHONY: stop
stop: ## Stopping running Microcks instances
	$(info $(M) Stopping Microcks instance)
	@docker-compose -f ./docker/docker-compose.yml stop

.PHONY: dev-stop
dev-stop: ## Start the Microcks docker container
	$(info $(M) Stopping Microcks devmode )
	@docker-compose -f ./docker/docker-compose-devmode.yml stop

.PHONY: dev-down
dev-down: ## Start the Microcks docker container
	$(info $(M) Stopping  Microcks devmode)
	@docker-compose -f ./docker/docker-compose-devmode.yml down

.PHONY: down
down: ## Stopping and removes running Microcks instances
	$(info $(M) Stopping Microcks instance)
	@docker-compose -f ./docker/docker-compose.yml down

.DEFAULT_GOAL := help

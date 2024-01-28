.PHONY: build_and_up
build_and_up: ## start docker containers (& build image)
	docker-compose up --build --force-recreate

.PHONY: shell
shell: ## access to the system console
	docker-compose run --service-ports --rm web bash
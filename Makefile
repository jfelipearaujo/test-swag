.PHONY: test

run: ## Run the app
	go run -race main.go

build: ## Build the app
	go build -race -o main main.go

swagger-2.0: ## Gen Swagger docs using swag in Swagger 2.0 format
	swag init -q --parseDependency -md . -o docs-v2 -ot go,yaml -g main.go; \

swagger-3.1: ## Gen Swagger docs using swag in OpenAPI 3.1 format
	swag init -q -v3.1 --parseDependency -md . -o docs-v3 -ot go,yaml -g main.go; \

fmt-swagger: ## Format Swagger comments
	swag fmt -g main.go
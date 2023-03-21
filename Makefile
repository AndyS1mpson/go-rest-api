.PHONY: build
build:
	go build -v ./cmd/apiserver

.PHONY: test
test:
	go test -v -race -timeout 30s ./...

.PHONY: run_db
run_db:
	docker-compose -f deployments/docker-compose.yaml up --build

.DEFAULT_GOAL := build

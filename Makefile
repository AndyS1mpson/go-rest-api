.PHONY: build
build:
	go build -v ./cmd/apiserver

.PHONY: test
test:
	go test -v -race -timeout 30s ./...

.PHONY: db
db:
	docker-compose -f deployments/docker-compose.yaml up --build

.DEFAULT_GOAL := build

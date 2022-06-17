include .env

tidy:
	go mod tidy

install:
	go install ./...

test:
	go test ./...

build:
	go build -ldflags='-s' -o bin/app.exe .

run:
	go run main.go

lint:
	golangci-lint run

start:
	docker-compose up
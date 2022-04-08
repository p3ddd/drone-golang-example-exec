build:
	go build -o build/${GOOS}/${GOARCH}/hello-drone

docker:
	docker build -t p3da/hello-drone .

test:
	go test -v .
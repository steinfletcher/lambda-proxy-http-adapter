.PHONY: test

test:
	bash -c 'diff -u <(echo -n) <(gofmt -s -d ./)'
	bash -c 'diff -u <(echo -n) <(go vet ./...)'
	go test ./... -v -covermode=atomic -coverprofile=coverage.out

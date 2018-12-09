image-name := hadoop-node
version := latest

default: image

.PHONY: image
image: .build

.build: Dockerfile
	docker build -t ${image-name}:${version} . && touch $@

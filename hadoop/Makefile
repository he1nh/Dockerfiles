image := hadoop
version := latest

build: Dockerfile
	docker build -t ${image}:${version} .; touch build

run: build
	docker run -it -v $$(pwd)/etc:/opt/hadoop-2.8.4/etc/hadoop ${image}:${version} bash

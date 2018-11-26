image := jupyter-spark
version := 0.1

.PHONY: latest run

latest: .latest

.latest: .build
	docker tag $(image):$(version) $(image):latest && touch $@

.build: Dockerfile
	docker build -t $(image):$(version) . && touch $@

run: latest
	docker run -v /home/heinh/shared:/shared -p 8080:8080 -p 4040:4040 $(image):latest

clean:
	rm -f .build .latest

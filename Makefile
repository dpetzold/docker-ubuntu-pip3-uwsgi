all: build tag push

build:
	docker build --rm -t ubuntu-latest-pip3 . | tee ubuntu-latest-pip3.out

tag:
	docker tag -f `tail -1 ubuntu-latest-pip3.out | awk '{print $$3}'` dpetzold/ubuntu-latest-pip3

push:
	docker push dpetzold/ubuntu-latest-pip3:latest

run:
	docker run -it ubuntu-latest-pip3 /bin/bash

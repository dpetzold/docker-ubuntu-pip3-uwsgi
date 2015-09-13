all: build push

build:
	docker build --rm -t ubuntu-latest-pip3-uwsgi:latest .

push:
	docker push dpetzold/ubuntu-latest-pip3-uwsgi:latest

shell:
	docker run -it ubuntu-latest-pip3 /bin/bash

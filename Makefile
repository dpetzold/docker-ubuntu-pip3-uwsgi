all: build push

build:
	docker build --rm -t dpetzold/ubuntu-latest-pip3-uwsgi:latest .

push:
	docker push dpetzold/ubuntu-latest-pip3-uwsgi:latest

shell:
	docker run -it dpetzold/ubuntu-latest-pip3:latest /bin/bash

all:
	docker build --no-cache --rm -t ubuntu-latest-pip3 .
	docker run -it ubuntu-latest-pip3

push:
	docker push dpetzold/ubuntu-latest-pip3

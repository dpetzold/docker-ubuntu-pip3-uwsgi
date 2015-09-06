FROM ubuntu:latest
ADD . /src
WORKDIR /src
RUN apt-get update
RUN apt-get install -y `cat requirements.apt | grep -v '#'`
RUN easy_install3 pip
RUN pip3 install --upgrade pip

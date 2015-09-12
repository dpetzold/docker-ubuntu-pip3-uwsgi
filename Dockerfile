FROM ubuntu:latest
ADD . /src
WORKDIR /src

RUN apt-get update

## basic build dependencies of various Django apps for Ubuntu 14.04
# build-essential metapackage install: make, gcc, g++,
RUN apt-get install -y \
  build-essential \
  mercurial \
  git-core \
  python3.4-dev \
  libpython3.4-dev \
  wget
  
## shared dependencies of:
## Pillow, pylibmc
RUN apt-get install -y zlib1g-dev

## django-extensions
RUN apt-get install -y graphviz-dev

## Pillow dependencies
RUN apt-get install -y \
  libtiff4-dev \
  libjpeg8-dev \
  libfreetype6-dev \
  liblcms1-dev \
  libwebp-dev

## Postgresql and psycopg2 dependencies
RUN apt-get install -y libpq-dev

## pylibmc
RUN apt-get install -y \
  libmemcached-dev \
  libssl-dev

# required to translate
RUN apt-get install -y gettext

RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py

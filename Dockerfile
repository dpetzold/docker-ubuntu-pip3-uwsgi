FROM ubuntu:latest
ADD . /src
WORKDIR /src

RUN apt-get update && apt-get -y dist-upgrade

## basic build dependencies of various Django apps for Ubuntu 14.04
# build-essential metapackage install: make, gcc, g++,
RUN apt-get install -y \
    build-essential \
    mercurial \
    git-core \
    python3.4-dev \
    libpython3.4-dev \
    python3-pip \
  --no-install-recommends

## shared dependencies of:
## Pillow, pylibmc
RUN apt-get install -y zlib1g-dev \
  --no-install-recommends

## Pillow dependencies
RUN apt-get install -y \
    libtiff4-dev \
    libjpeg8-dev \
    libfreetype6-dev \
    liblcms1-dev \
    libwebp-dev \
  --no-install-recommends

## Postgresql and psycopg2 dependencies
RUN apt-get install -y libpq-dev

## pylibmc
RUN apt-get install -y \
    libmemcached-dev \
    libssl-dev \
  --no-install-recommends

# required to translate
RUN apt-get install -y gettext \
  --no-install-recommends

RUN pip3 install --upgrade pip

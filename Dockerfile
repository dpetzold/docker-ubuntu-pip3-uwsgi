FROM ubuntu:latest
ADD . /src
WORKDIR /src

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    gettext \
    git-core \
    libfreetype6-dev \
    libjpeg8-dev \
    liblcms1-dev \
    libmemcached-dev \
    libpq-dev \
    libpython3.4-dev \
    libssl-dev \
    libtiff4-dev \
    libwebp-dev \
    mercurial \
    python3.4-dev \
    python3-pip \
    zlib1g-dev \
  --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip

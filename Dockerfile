FROM ubuntu:latest
ADD . /src
WORKDIR /src
CMD apt-get update

## basic build dependencies of various Django apps for Ubuntu 14.04
# build-essential metapackage install: make, gcc, g++,
CMD apt-get install -y \
  build-essential \
  mercurial \
  git-core \
  python3.4-dev \
  libpython3.4-dev

## shared dependencies of:
## Pillow, pylibmc
CMD apt-get remove -y libpq5
CMD apt-get install -y libpq-dev
CMD apt-get build-dep -y python3-pil
CMD apt-get build-dep -y python-pylibmc
CMD apt-get install -y curl

# CMD apt-get install -y gettext
# CMD apt-get install -y graphviz-dev

CMD curl https://bootstrap.pypa.io/get-pip.py
CMD python3 get-pip.py

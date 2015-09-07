FROM ubuntu:latest
ADD . /src
WORKDIR /src
CMD apt-get update
CMD apt-get install -y `cat packages/development | grep -v '#'`
CMD apt-get install -y `cat packages/translate | grep -v '#'`
CMD apt-get install -y `cat packages/pillow | grep -v '#'`
CMD apt-get install -y `cat packages/postgres | grep -v '#'`
CMD apt-get install -y `cat packages/pylibmc | grep -v '#'`
CMD apt-get install -y `cat packages/django-extensions | grep -v '#'`
CMD easy_install3 pip
CMD pip3 install --upgrade pip

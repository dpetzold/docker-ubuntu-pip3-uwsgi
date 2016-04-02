FROM dpetzold/ubuntu-pip3:latest

RUN apt-get update && apt-get install -y \
		build-essential \
	 	libpcre3-dev \
		libgeoip-dev \ 
  --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN pip3 install gevent greenlet uWSGI

RUN mkdir /var/log/uwsgi
RUN mkdir /var/run/uwsgi
RUN chown nobody:nogroup /var/run/uwsgi
RUN chown nobody:nogroup /var/log/uwsgi

EXPOSE 9000
CMD ["uwsgi", "config/uwsgi.ini"]

FROM dpetzold/ubuntu-latest-pip3:latest

RUN apt-get update && apt-get install -y \
		build-essential \
		python3.4-dev \
	 	libpcre3-dev \
		libgeoip-dev \ 
  --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN pip3 install gevent greenlet uWSGI

RUN mkdir /var/log/uwsgi
RUN mkdir /var/run/uwsgi
RUN chown nobody:nogroup /var/run/uwsgi
RUN chown nobody:nogroup /var/log/uwsgi

# RUN sysctl -w net.core.somaxconn=8192

EXPOSE 9000
CMD ["uwsgi", "config/uwsgi.ini"]

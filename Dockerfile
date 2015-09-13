FROM dpetzold/ubuntu-pip3:latest

RUN apt-get update && apt-get install -y \
    build-essential \
		python3.4 \
		python3.4-dev \
	 	libpcre3-dev \
		libgeoip-dev \ 
  --no-install-recommends && rm -rf /var/lib/apt/lists/*

pip3 install --uprgade uWSGI

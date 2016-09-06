FROM ubuntu:16.04
MAINTAINER hmodrow

RUN adduser --disabled-password --gecos "" pharo
USER pharo
WORKDIR /home/pharo

ENV DEBIAN_FRONTEND noninteractive

RUN dpkg --add-architecture i386 && \
    apt-get update -y && \
    apt-get install -y --no-install-recommends \
    libx11-6:i386 libgl1-mesa-glx:i386 \ 
	  libfontconfig1:i386 libssl1.0.0:i386 wget unzip && \
    wget -O pharo-ui http://get.pharo.org/vm50 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    curl get.pharo.org/50+vm | bash

COPY ./scripts .

EXPOSE 8080

CMD ["/home/pharo","Pharo.image","--no-quit","./scripts/startup.st"]

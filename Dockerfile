FROM ubuntu:16.04
MAINTAINER hmodrow

USER root
RUN adduser --disabled-password --gecos "" --home /home/pharo pharo

ENV DEBIAN_FRONTEND noninteractive

RUN dpkg --add-architecture i386 && \
    apt-get update -y && \
    apt-get install -y --no-install-recommends \
    libx11-6:i386 libgl1-mesa-glx:i386 \ 
	  libfontconfig1:i386 libssl1.0.0:i386 wget unzip && \
    wget -O pharo-ui http://get.pharo.org/vm50 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 


EXPOSE 8080

USER pharo

WORKDIR /home/pharo

COPY ./scripts .

RUN curl get.pharo.org/50+vm | bash

CMD ["/home/pharo","Pharo.image","--no-quit","./scripts/startup.st"]

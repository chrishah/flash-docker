FROM ubuntu:18.04

RUN apt-get update && \
	apt-get install -y \
		wget \
		build-essential=12.4ubuntu1 

#install flash
WORKDIR /usr/src
RUN mkdir FLASh && cd FLASh && \
	wget http://ccb.jhu.edu/software/FLASH/FLASH-1.2.11-Linux-x86_64.tar.gz && \
	tar xvfz FLASH-1.2.11-Linux-x86_64.tar.gz

ENV PATH="/usr/src/FLASh/FLASH-1.2.11-Linux-x86_64:$PATH"

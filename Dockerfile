FROM ubuntu:12.04

RUN apt-get update -qq

# Install dependencies
RUN apt-get install build-essential dh-autoreconf git -y -qq
RUN apt-get install libssl-dev -y -qq
RUN cd /tmp ; git clone https://github.com/wg/wrk.git 
RUN cd /tmp/wrk ; make ; cp wrk /usr/local/bin/


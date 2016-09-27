FROM ubuntu:16.04
MAINTAINER arron

RUN apt-get update
RUN apt-get install -y wget
RUN wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks.sh
RUN chmod +x shadowsocks.sh
RUN ./shadowsocks.sh 2>&1 | tee shadowsocks.log

FROM ubuntu:16.04
MAINTAINER arron

RUN apt-get update && \
    apt-get install -y python-pip libsodium18
RUN pip install shadowsocks==2.8.2

# Configure container to run as an executable
ENTRYPOINT ["/usr/local/bin/ssserver"]

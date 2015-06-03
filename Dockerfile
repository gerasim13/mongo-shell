FROM phusion/baseimage
MAINTAINER Pavel Litvinenko <gerasim13@gmail.com>
RUN \
    echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' > /etc/apt/sources.list.d/mongodb.list && \
    apt-get update && \
    apt-get install -y mongodb-clients && \
    rm -rf /var/lib/apt/lists/*
# ENTRYPOINT ["/usr/bin/mongo", "--host"]
# CMD ["localhost"]

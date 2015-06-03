FROM dockerfile/ubuntu
MAINTAINER Pavel Litvinenko <gerasim13@gmail.com>
RUN \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
    echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' > /etc/apt/sources.list.d/mongodb.list && \
    apt-get update && \
    apt-get install -y mongodb-org-shell mongodb-clients && \
    rm -rf /var/lib/apt/lists/*
# ENTRYPOINT ["/usr/bin/mongo", "--host"]
# CMD ["localhost"]

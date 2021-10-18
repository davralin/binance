FROM debian:stable-slim
LABEL MAINTAINER davralin

RUN \
  /usr/bin/apt-get -y update && \
  /usr/bin/apt-get -y install --no-install-recommends \
    python3-pip \
    emacs-nox \
    git-core \
    less \
    mariadb-client \
    nano \
    procps \
    rsync \
    silversearcher-ag \
    tar \
    unzip \
    vim \
    && \
    /bin/rm -rf /var/lib/apt/lists/* \
    && \
    /usr/bin/pip3 install python-binance

FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN \
  apt update && \
  apt install -y language-pack-en-base && \
  export LC_ALL=en_US.UTF-8 && \
  export LANG=en_US.UTF-8 && \
  apt install -y \
    curl \
    git \
    nodejs \
    npm \
    && \
  apt autoremove -y && \
  rm -rf /var/lib/apt/lists/*

VOLUME /node_proc

ENTRYPOINT ["node","/node_proc/server.js"]


#!/bin/bash

apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
  apt-get install -y \
  tzdata \
  wget \
  curl \
  git \
  postgresql-client || exit 1;

touch ~/.pgpass || exit 1;
chmod 0600 ~/.pgpass || exit 1;

wget https://github.com/prasmussen/gdrive/releases/download/2.1.1/gdrive_2.1.1_linux_amd64.tar.gz || exit 1;
tar -zxvf gdrive_2.1.1_linux_amd64.tar.gz || exit 1;


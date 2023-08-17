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

wget https://github.com/canadyworkshop/googledrive/releases/download/v0.0.2/googledrive_0.0.2_linux_amd64.tar.gz || exit 1;
tar -zxvf googledrive_0.0.2_linux_amd64.tar.gz || exit 1;


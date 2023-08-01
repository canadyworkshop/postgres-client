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



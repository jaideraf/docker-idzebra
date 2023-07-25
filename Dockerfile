# This is the Dockerfile for jaideraf/idzebra

ARG UBUNTU_VERSION=20.04

FROM ubuntu:${UBUNTU_VERSION}

# set timezone
ENV TZ=America/Sao_Paulo
RUN set -eux; \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# add repository, update packages and install dependencies

# https://serverfault.com/a/797318
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    gnupg2 \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN echo "deb [signed-by=/usr/share/keyrings/indexdata.gpg] https://ftp.indexdata.com/ubuntu focal main" \
    | tee -a /etc/apt/sources.list \
    && wget -qO - https://ftp.indexdata.com/debian/indexdata.asc \
    | gpg --dearmor | tee /usr/share/keyrings/indexdata.gpg >/dev/null

RUN apt-get update && apt-get install -y --no-install-recommends \
    idzebra-2.0 \
    yaz \
    yaz-icu \
    && rm -rf /var/lib/apt/lists/*

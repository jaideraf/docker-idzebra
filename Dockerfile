# This is the Dockerfile for jaideraf/idzebra

FROM ubuntu:focal

# set timezone
ENV TZ=America/Sao_Paulo
RUN set -eux; \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# add repository, update packages and install dependencies
RUN apt-get update && apt-get install -y \
    gnupg2 \
    wget \
    && rm -rf /var/lib/apt/lists/*

RUN echo "deb https://ftp.indexdata.com/ubuntu focal main" \
    | tee -a /etc/apt/sources.list \
    && wget -qO - https://ftp.indexdata.com/debian/indexdata.asc | apt-key add -

RUN apt-get update && apt-get install -y --no-install-recommends \
    idzebra-2.0 \
    yaz \
    yaz-icu \
    && rm -rf /var/lib/apt/lists/*

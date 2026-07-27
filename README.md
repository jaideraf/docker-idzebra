# docker-idzebra
[![Docker Pulls](https://img.shields.io/docker/pulls/jaideraf/idzebra.svg)](https://hub.docker.com/r/jaideraf/idzebra)

Dockerfile for [jaideraf/idzebra](https://hub.docker.com/r/jaideraf/idzebra)

Ubuntu with updated [Zebra](https://www.indexdata.com/resources/software/zebra/) engine (timezone from America/Sao_Paulo). For arm64 architecture use [jaideraf/idzebra-arm64](https://hub.docker.com/r/jaideraf/idzebra-arm64) image.

Build the image with:

```shell
docker build -t "jaideraf/idzebra:alpine" -f "Dockerfile_Alpine" .
```

Push to Docker Hub with:

```shell
docker image push "jaideraf/idzebra:alpine"
```

To see the versions installed, use:

- `docker run --rm jaideraf/idzebra:alpine zebraidx -V`

- `docker run --rm jaideraf/idzebra:alpine yaz-client -V`

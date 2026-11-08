# docker-idzebra
[![Docker Pulls](https://img.shields.io/docker/pulls/jaideraf/idzebra.svg)](https://hub.docker.com/r/jaideraf/idzebra)

Dockerfile for [jaideraf/idzebra](https://hub.docker.com/r/jaideraf/idzebra)

Updated [Zebra](https://www.indexdata.com/resources/software/zebra/) engine (timezone from America/Sao_Paulo). For arm64 architecture use [jaideraf/idzebra-arm64](https://hub.docker.com/r/jaideraf/idzebra-arm64) image.

Build the image with:

```shell
docker build -t "jaideraf/idzebra:alpine" -f "Dockerfile_Alpine" .
```

or

```shell
docker build -t "jaideraf/idzebra:26.04" -f "Dockerfile_Alpine" .
```

Push to Docker Hub with:

```shell
docker image push "jaideraf/idzebra:alpine"
```

To see the versions installed, use:

- `docker run --rm jaideraf/idzebra:alpine idzebra-config-2.0 --version`
- `docker run --rm jaideraf/idzebra:alpine yaz-config --version`

or

- `docker run --rm jaideraf/idzebra:26.04 idzebra-config-2.0 --version`
- `docker run --rm jaideraf/idzebra:26.04 yaz-config --version`

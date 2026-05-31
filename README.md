# docker-idzebra

Dockerfile for [jaideraf/idzebra](https://hub.docker.com/r/jaideraf/idzebra)

Ubuntu with updated [Zebra](https://www.indexdata.com/resources/software/zebra/) engine (timezone from America/Sao_Paulo). For arm64 architecture use [jaideraf/idzebra-arm64](https://hub.docker.com/r/jaideraf/idzebra-arm64) image.

Build the image with:

```shell
docker build -t "jaideraf/idzebra:26.04" -f "Dockerfile_Ubuntu_26.04" .
```

Push to Docker Hub with:

```shell
docker push "jaideraf/idzebra:26.04"
```

To see the versions installed, use:

- `docker run --rm jaideraf/idzebra:26.04 zebraidx -V`

- `docker run --rm jaideraf/idzebra:26.04 yaz-client -V`

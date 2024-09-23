# docker-idzebra

Dockerfile for [jaideraf/idzebra](https://hub.docker.com/r/jaideraf/idzebra)

Ubuntu with updated [Zebra](https://www.indexdata.com/resources/software/zebra/) engine (timezone from America/Sao_Paulo). For arm64 architecture use [jaideraf/idzebra-arm64](https://hub.docker.com/r/jaideraf/idzebra-arm64) image.

To see the versions installed, use:

- `docker run --rm jaideraf/idzebra:22.04 idzebra-config-2.0 --version`

- `docker run --rm jaideraf/idzebra:22.04 yaz-config --version`

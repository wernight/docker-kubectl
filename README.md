# Supported tags and respective `Dockerfile` links

  * [`1`, `1.3`, `1.3.6`, `latest`](https://github.com/wernight/docker-kubectl/blob/master/Dockerfile) [![](https://images.microbadger.com/badges/image/wernight/kubectl.svg)](http://microbadger.com/images/wernight/kubectl "Get your own image badge on microbadger.com")
  * [`1.2`, `1.2.4`](https://github.com/wernight/docker-kubectl/blob/v1.2.4/Dockerfile) [![](https://images.microbadger.com/badges/image/wernight/kubectl:1.2.4.svg)](http://microbadger.com/images/wernight/kubectl "Get your own image badge on microbadger.com")

Dockerized `kubectl` CLI tool for [Kubernetes](http://kubernetes.io/). Built on top of Alpine Linux (very small) with `glibc` installed (required by `kubectl`).

## Usage

    $ docker run --rm --net=host wernight/kubectl kubectl --help

Note: `--net=host` is optional, just make sure it can reach your Kubernetes
cluster.

## Why use it

It's mostly meant to be used during continuous integration or as part of an automated build/deployment:

  * So that your machine (e.g. build server) doesn't need `kubectl` to be installed; only Docker.
  * To avoid `kubectl config use-context` and similar to affect your build and other projects' builds.

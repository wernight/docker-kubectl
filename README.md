 [![](https://images.microbadger.com/badges/image/wernight/kubectl.svg)](http://microbadger.com/images/wernight/kubectl "Get your own image badge on microbadger.com")

Dockerized `kubectl` CLI tool for [Kubernetes](http://kubernetes.io/). Built on top of Alpine Linux (very small) with `glibc` installed (required by `kubectl`).

## Usage

    $ docker run --rm --net=host wernight/kubectl kubectl --help

## Why use it

It's mostly meant to be used during continuous integration or as part of an automated build/deployment:

  * So that your machine (e.g. build server) doesn't need `kubectl` to be installed; only Docker.
  * To avoid `kubectl config use-context` and similar to affect your build and other projects' builds.

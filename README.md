# Supported tags and respective `Dockerfile` links

  * [`1`, `1.3`, `1.3.6`, `latest`](https://github.com/wernight/docker-kubectl/blob/master/Dockerfile) [![](https://images.microbadger.com/badges/image/wernight/kubectl.svg)](http://microbadger.com/images/wernight/kubectl "Get your own image badge on microbadger.com")
  * [`1.2`, `1.2.4`](https://github.com/wernight/docker-kubectl/blob/v1.2.4/Dockerfile) [![](https://images.microbadger.com/badges/image/wernight/kubectl:1.2.4.svg)](http://microbadger.com/images/wernight/kubectl "Get your own image badge on microbadger.com")

Dockerized `kubectl` CLI tool for [Kubernetes](http://kubernetes.io/). Built on top of Alpine Linux (very small) with `glibc` installed (required by `kubectl`).

## Usage

    $ docker run --rm wernight/kubectl -- kubectl --help

For example to access a local Kubernetes cluster you may run:

    $ docker run --net=host --user $UID -v ~/.kube:/config/.kube wernight/kubectl -- kubectl cluster-info

  * `-net=host` is optional, it's just make sure it can reach your Kubernetes cluster.
  * `--user $UID` is optional, by default runs as random UID, this allows to access you existing `~/.kube` if you have one. As you can note, you can run `kubectl` as any UID/GID.
  * `-v XXX:/config` is optional, allows to store its configuration and possibly access existing configuration. Note that `/config` will always be that directory containing `.kube` (it's the force `HOME` directory).

## Why use it

It's mostly meant to be used during continuous integration or as part of an automated build/deployment:

  * So that your machine (e.g. build server) doesn't need `kubectl` to be installed; only Docker.
  * To avoid `kubectl config use-context` and similar to affect your build and other projects' builds.

## Feedbacks

Suggestions are welcome on our [GitHub issue tracker](https://github.com/wernight/docker-kubectl/issues).


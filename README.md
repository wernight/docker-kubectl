# Supported tags and respective `Dockerfile` links

  * [`1`, `1.3`, `1.3.6`, `latest`](https://github.com/wernight/docker-kubectl/blob/master/Dockerfile) [![](https://images.microbadger.com/badges/image/wernight/kubectl.svg)](http://microbadger.com/images/wernight/kubectl "Get your own image badge on microbadger.com")
  * [`1.2`, `1.2.4`](https://github.com/wernight/docker-kubectl/blob/v1.2.4/Dockerfile) [![](https://images.microbadger.com/badges/image/wernight/kubectl:1.2.4.svg)](http://microbadger.com/images/wernight/kubectl "Get your own image badge on microbadger.com")

Dockerized `kubectl` CLI tool for [Kubernetes](http://kubernetes.io/) built on top of [Alpine Linux](https://hub.docker.com/_/alpine).

## Usage

    $ docker run --rm wernight/kubectl --help

Note: Entrypoint is set to kubectl so do **not** type `wernight/kubectl kubectl`.

For example to access a local Kubernetes cluster you may run:

    $ docker run --rm --net=host --user $UID \
        -v ~/.kube:/config/.kube \
        wernight/kubectl cluster-info

  * `-net=host`: (optional) allows to connect to a local Kubernetes cluster.
  * `--user $UID`: (optional) by default runs as random UID `2342`, this allows to access your existing `~/.kube` if you have one. As you can note, you can run `kubectl` as any UID/GID.
  * `-v XXX:/config`: (optional) allows to store its configuration and possibly access existing configuration. Note that `/config` will always be the directory containing `.kube` (it's the forced `HOME` directory). Can be read-only. Alternatively you can mount a Kubernetes service account for example: `-v /var/run/secrets/kubernetes.io/serviceaccount:/var/run/secrets/kubernetes.io/serviceaccount:ro`.

### Alias

You may setup an alias to run this is if you were running kubectl directly, for example:

    $ alias kubectl=docker run --rm --user $UID \
        -v /var/run/secrets/kubernetes.io/serviceaccount:/var/run/secrets/kubernetes.io/serviceaccount:r \
        wernight/kubectl

### Why use it

It's mostly meant to be used during continuous integration or as part of an automated build/deployment:

  * So that your machine (e.g. build server) doesn't need `kubectl` to be installed; only Docker.
  * To avoid `kubectl config use-context` and similar to affect your build and other projects' builds.

## Feedbacks

Suggestions are welcome on our [GitHub issue tracker](https://github.com/wernight/docker-kubectl/issues).

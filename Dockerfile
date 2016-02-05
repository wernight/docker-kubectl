FROM sdurrheimer/alpine-glibc

# Install kubectl
RUN apk add --update -t deps curl ca-certificates \
 && curl -L https://storage.googleapis.com/kubernetes-release/release/v1.1.7/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && chmod +x /usr/local/bin/kubectl \
 && apk del --purge deps \
 && rm /var/cache/apk/*

CMD ["kubectl"]

FROM sdurrheimer/alpine-glibc

# Install kubectl
# Note: Latest version may be found on:
# https://aur.archlinux.org/packages/kubectl-bin/
RUN apk add --no-cache curl ca-certificates \
 && curl -L https://storage.googleapis.com/kubernetes-release/release/v1.3.6/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
 && chmod +x /usr/local/bin/kubectl

CMD ["kubectl"]

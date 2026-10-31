FROM alpine:3.24.3@sha256:b3413572228e34bd1c9245f5565e6cd127005655e8a7899aef33d8e83255c9e6

LABEL \
  "name"="GitHub Actions stale run canceller" \
  "homepage"="https://github.com/marketplace/actions/gh-actions-stale-run-canceller" \
  "repository"="https://github.com/yellowmegaman/gh-build-canceller"

RUN apk add --no-cache git curl jq bash

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]

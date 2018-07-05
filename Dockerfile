FROM golang:1.10-alpine3.7

RUN apk add --update --no-cache \
      ca-certificates \
      git \
      glide \
      make \
      upx \
      bash \
  && rm /var/cache/apk/*


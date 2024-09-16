FROM alpine:latest

# bash because i prefer bash
# findutils due to some options alpine's default 'find' doesn't support
RUN apk update && apk upgrade \
    && apk add bash build-base zlib-dev findutils gnutls-dev pcre-dev make wget

WORKDIR /opt/mud

COPY Makefile .

RUN make tintin

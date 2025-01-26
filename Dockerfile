FROM alpine:latest

# bash because i prefer bash
# findutils due to some options alpine's default 'find' doesn't support
RUN apk update && apk upgrade \
    && apk add bash build-base dos2unix findutils gnutls-dev pcre-dev make wget vim zlib-dev

WORKDIR /opt/mud

# only copy makefile, volume mount is created for entire directory
COPY Makefile .

RUN make tintin && mkdir logs

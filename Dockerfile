FROM alexanderwagnerdev/alpine:builder AS builder

RUN apk update && \
    apk upgrade && \
    apk add --no-cache build-base musl-dev git pkgconfig openssl-dev openssl-libs-static patchelf binutils rust cargo && \
    rm -rf /var/cache/apk/*

WORKDIR /app

ARG NOALBS_TAG=v2.16.0

RUN git clone --branch $NOALBS_TAG --depth 1 https://github.com/NOALBS/nginx-obs-automatic-low-bitrate-switching.git && \
    cd nginx-obs-automatic-low-bitrate-switching && \
    CARGO_BUILD_JOBS=$(nproc) cargo build --release

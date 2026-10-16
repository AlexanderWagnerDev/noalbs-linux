FROM alexanderwagnerdev/alpine:builder AS builder

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    binutils \
    build-base \
    cargo \
    git \
    musl-dev \
    openssl-dev \
    openssl-libs-static \
    patchelf \
    pkgconfig \
    rust && \
    rm -rf /var/cache/apk/*

WORKDIR /app

ARG NOALBS_TAG=v2.18.0

RUN git clone --branch "$NOALBS_TAG" --depth 1 https://github.com/NOALBS/nginx-obs-automatic-low-bitrate-switching.git && \
    cd nginx-obs-automatic-low-bitrate-switching && \
    CARGO_BUILD_JOBS=$(nproc) cargo build --release

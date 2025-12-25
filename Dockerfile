ARG TARGETPLATFORM
ARG NOALBS_TAG=v2.16.0

FROM alexanderwagnerdev/alpine:builder AS builder

RUN apk update && \
    apk upgrade && \
    apk add --no-cache build-base linux-headers gcc musl-dev git pkgconfig openssl-dev openssl-libs-static patchelf binutils rust cargo && \
    rm -rf /var/cache/apk/*

WORKDIR /noalbs

ARG NOALBS_TAG
RUN git clone --depth 1 --branch $NOALBS_TAG \
    https://github.com/NOALBS/nginx-obs-automatic-low-bitrate-switching.git .

ARG TARGETPLATFORM
RUN case "$TARGETPLATFORM" in \
    "linux/amd64") TARGET="x86_64-unknown-linux-musl" ;; \
    "linux/386") TARGET="i686-unknown-linux-musl" ;; \
    "linux/arm64") TARGET="aarch64-unknown-linux-musl" ;; \
    "linux/arm/v7") TARGET="armv7-unknown-linux-musleabihf" ;; \
    "linux/s390x") TARGET="s390x-unknown-linux-musl" ;; \
    "linux/riscv64") TARGET="riscv64gc-unknown-linux-musl" ;; \
    "linux/ppc64le") TARGET="powerpc64le-unknown-linux-musl" ;; \
    *) TARGET="x86_64-unknown-linux-musl" ;; \
    esac && \
    echo "Building for target: $TARGET" && \
    rustup target add $TARGET && \
    PKG_CONFIG_ALLOW_CROSS=1 \
    OPENSSL_STATIC=1 \
    CARGO_BUILD_JOBS=$(nproc) \
    cargo build --release --target $TARGET

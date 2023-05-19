ARG IMAGE_ARCH=linux/arm64
ARG BASE_IMAGE=wayland-base-vivante
ARG IMAGE_TAG=2

FROM --platform=$IMAGE_ARCH torizon/$BASE_IMAGE:$IMAGE_TAG

RUN apt-get -y update && apt-get install -y --no-install-recommends \
    evince \
    && apt-get clean && apt-get autoremove && rm -rf /var/lib/apt/lists/*

COPY presentation.pdf /home/torizon/presentation.pdf

COPY start-presentation.sh /home/torizon/start-presentation.sh

WORKDIR /home/torizon

ENTRYPOINT ./start-presentation.sh

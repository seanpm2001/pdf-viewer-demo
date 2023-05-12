ARG IMAGE_ARCH=linux/arm64
ARG BASE_IMAGE=weston-vivante
ARG IMAGE_TAG=2

FROM --platform=$IMAGE_ARCH torizon/$BASE_IMAGE:$IMAGE_TAG

COPY background.png /usr/share/background.png

COPY weston.ini /weston.ini

RUN cat /weston.ini >> /etc/xdg/weston-dev/weston.ini

RUN rm /weston.ini

RUN apt-get -y update && apt-get install -y --no-install-recommends \
    mupdf \
    && apt-get clean && apt-get autoremove && rm -rf /var/lib/apt/lists/*

COPY presentation.pdf /home/torizon/presentation.pdf

WORKDIR /home/torizon

ENTRYPOINT ["/usr/bin/entry.sh"]

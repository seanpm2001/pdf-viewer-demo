ARG IMAGE_ARCH=linux/arm64
ARG BASE_IMAGE=weston-vivante
ARG IMAGE_TAG=2

FROM --platform=$IMAGE_ARCH torizon/$BASE_IMAGE:$IMAGE_TAG

COPY homeworld_crop_red.jpg /usr/share/background.jpg

COPY weston.ini /weston.ini

RUN cat /weston.ini >> /etc/xdg/weston-dev/weston.ini

RUN rm /weston.ini

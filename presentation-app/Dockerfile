# Here we tell to which architecture it should build. This demo was made for an
# Apalis iMX8, so arm64 is our target. If you want try with 32bits SoM's, use
# linux/arm here.
ARG IMAGE_ARCH=linux/arm64
# And to use GPU hardware acceleration, we have to use the -vivante container
# variant. If you want try with other SoM's, use only wayland-base here.
ARG BASE_IMAGE=wayland-base-vivante
# The IMAGE_TAG=3 indicates we are using bookworm based containers. For
# bullseye based ones, check out the bullseye branch/tag of this repository.
ARG IMAGE_TAG=3

# Set the base image to build upon it
FROM --platform=$IMAGE_ARCH torizon/$BASE_IMAGE:$IMAGE_TAG

# Install our pdf viewer application
RUN apt-get -y update && apt-get install -y --no-install-recommends \
        evince \
    && apt-get clean && apt-get autoremove && rm -rf /var/lib/apt/lists/*

# Copy the presentation to our container image
COPY presentation.pdf /home/torizon/presentation.pdf

# Copy the startup script to our container image
COPY start-presentation.sh /home/torizon/start-presentation.sh

# Make sure we are in the correct folder before launching the presentation
WORKDIR /home/torizon

# Run the script as the default startup operation
ENTRYPOINT ./start-presentation.sh

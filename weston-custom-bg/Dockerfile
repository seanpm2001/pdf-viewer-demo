# Here we tell to which architecture it should build. This demo was made for an
# Apalis iMX8, so arm64 is our target. If you want try with 32bits SoM's, use
# linux/arm here.
ARG IMAGE_ARCH=linux/arm64
# And to use GPU hardware acceleration, we have to use the -vivante container
# variant. If you want try with other SoM's, use only weston here.
ARG BASE_IMAGE=weston-vivante
# The IMAGE_TAG=3 indicates we are using bookworm based containers. For
# bullseye based ones, check out the bullseye branch/tag of this repository.
ARG IMAGE_TAG=3

# Set the base image to build upon it
FROM --platform=$IMAGE_ARCH torizon/$BASE_IMAGE:$IMAGE_TAG

# Copy the custom background file to our container image
COPY homeworld_desktop.png /usr/share/background.png

# Copy the configuration to be appended to weston.ini of our container image
COPY weston.ini /weston.ini

# Append our custom config to developer's weston.ini. When --developer flag is
# set, weston uses the weston-dev/ folder, otherwise it uses weston/
RUN cat /weston.ini >> /etc/xdg/weston-dev/weston.ini

# Clean up the image
RUN rm /weston.ini

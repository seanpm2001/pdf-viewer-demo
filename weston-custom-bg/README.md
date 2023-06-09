# Weston Custom BG
This folder contains the instructions and files to build the container which
will run the weston window manager with a custom background. Below you will
find an explanation of each component.

## Overview
This folder contains 3 important files, namely:
- `Dockerfile`: contains the instructions to build the container image;
- `weston.ini`: contains the configuration to be appended to weston's config;
- `homeworld_desktop.png`: the file which will be set as background image.

Each file has comments to indicate what the instructions are doing and how you
can customize it to your needs. If you encounter a problem or have a
suggestion, please contact us and/or open a new issue or merge request.

## TL;DR
If you just want to configure weston with your custom background image,
substitute `homeworld_desktop.png` with your custom background file, but keep
the same filename! Then build the container image and push to your docker
registry (also update it in the `docker-compose.yml` file).

## Authors and acknowledgment
This demo was developed by Carlos Henrique Lima Melara with the help of many
other colleagues (thank you all)!

## License
This project is licensed under the terms of the MIT License.

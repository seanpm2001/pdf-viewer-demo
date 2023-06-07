# Presentation App
This folder contains the instructions and files to build the container which
will run the PDF viewer application. Below you will find an explanation of each
component.

## Overview
This folder contains 3 important files, namely:
- `Dockerfile`: contains the instructions to build the container image;
- `presentation.pdf`: the file to be presented by the PDF viewer;
- `start-presentation.sh`: the script with the instructions to launch the PDF
  viewer.

Each file has comments to indicate what the instructions are doing and how you
can customize it to your needs. If you encounter a problem or have a
suggestion, please contact us and/or open a new issue or merge request.

## TLDR
If you just want to present your slideshow, substitute `presentation.pdf` with
your file, but keep the same filename! Then build the container image and push
to your docker registry (also update it in the `docker-compose.yml` file).

## Authors and acknowledgment
This demo was developed by Carlos Henrique Lima Melara with the help of many
other colleagues (thank you all)!

## License
This project is licensed under the terms of the MIT License.

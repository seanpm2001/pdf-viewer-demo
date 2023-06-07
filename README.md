# PDF Viewer Example
This project is an example on how to use your Toradex SoM as a pdf viewer and/or
slideshow presentation viewer. It was first developed for a Toradex talk in
[MiniDebConf Brasília 2023](https://brasilia.mini.debconf.org/).

In this example you will learn:
- How to install a pdf viewer application;
- How to launch it in the container (fullscreen or not);
- How to enable weston's developer mode;
- How to launch the pdf viewer automatically after boot.

## Requirements
- Apalis iMX8 Toradex SoM;
- Ixora Carrier Board;
- Display, TV or projector.

## Overview
This project contains 2 folders, each of then corresponds to one container
image that will be generated and used.

- The `presentation-app` folder contains the instructions to build a container
image which will display a slideshow (or any pdf) in the screen.
- The `weston-custom-bg` folder contains the instructions to build a custom weston
image, allowing one to set a custom background image, setting additional weston
configuration, etc.

For a detailed description about each image, check out the instructions in the
folder's README.

## Using this Example
To use this demo as is, you can use docker compose to launch the default
container images listed in `docker-compose.yml` file. If you are in this repo's
top level folder, just copy `docker-compose.yml` to your board and execute:

```bash
docker compose -f /path/to/docker-compose.yml up
```

As an alternative, you can upload `docker-compose.yml` to our [Torizon
Platform](https://app.torizon.io) and get it working on your board, boards or
fleet in seconds!

If you want to automatically start the PDF viewer on boot, you can copy
`docker-compose.yml` to `/var/sota/storage/docker-compose/` and reboot the
board.

## Additional Resources
- [Debian Containers for Torizon](https://developer.toradex.com/torizon/provided-containers/debian-containers-for-torizon)
- [Modifying TorizonCore Debian Based Container Images](https://developer.toradex.com/torizon/provided-containers/modifying-torizoncore-debian-based-container-images)
- [Working with Weston on TorizonCore](https://developer.toradex.com/torizon/provided-containers/working-with-weston-on-torizoncore)
- [Deploying Container Images to TorizonCore](https://developer.toradex.com/torizon/application-development/deploying-container-images-to-torizoncore)
- [Using Multiple Containers with TorizonCore](https://developer.toradex.com/torizon/application-development/using-multiple-containers-with-torizoncore)
- [How to Autorun an Application With TorizonCore](https://developer.toradex.com/torizon/application-development/how-to-autorun-an-application-with-torizoncore)
- [Torizon Best Practices Guide - Sharing a Pluggable Device](https://developer.toradex.com/torizon/torizoncore/best-practices/torizon-best-practices-guide/#sharing-a-pluggable-device)

## Additional Information
The initial demo was constructed to showcase our product and its potential in a
conference (MiniDebConf Brasília 2023), so it has some different aspects than
one might want. For example, we set a custom background image to show to
the audience we are running Debian. We also set a 5 seconds sleep before
launching the application to emphasize the last point. We use the --developer
option to have a navigation bar and a easy way to launch a terminal, this was
done so we could show it as a demo in the end of the talk. Regardless of these
aspects, the demo still brings important aspects like how to launch a
slideshow in fullscreen mode, how to run it automatically after boot, how to
customize weston to one own needs, how to use a multi-container setup with
docker compose, etc.

## Authors and acknowledgment
This demo was developed by Carlos Henrique Lima Melara with the help of many
other colleagues (thank you all)!

## License
This project is licensed under the terms of the MIT License.

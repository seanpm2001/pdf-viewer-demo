#!/bin/bash

# Wait a bit before launching the presentation (so people can view the
# background :-)
sleep 5

# Launch the slides in presentation mode (fullscreen and no borders or menus).
# For more options, see evince's manpage (e.g. man evince)
evince --presentation /home/torizon/presentation.pdf

#!/bin/bash
xhost +
docker run -d \
-v /etc/localtime:/etc/localtime:ro \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix$DISPLAY \
-e GDK_SCALE \
-e GDK_DPI_SCALE \
python-hello


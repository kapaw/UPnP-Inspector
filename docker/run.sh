#!/bin/sh

docker run --net=host -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix upnp-inspector upnp-inspector

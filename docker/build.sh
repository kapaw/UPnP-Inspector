#!/bin/sh

docker rmi upnp-inspector
docker build -t upnp-inspector .

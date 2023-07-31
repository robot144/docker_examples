#! /bin/bash
#
#

# docker-hub prefix
export DOCKERHUB=""

# Look for podman or docker if variable CONTAINERRUNNER is not set explicitly
if [ -z "$CONTAINERRUNNER" ]; then
   path_to_podman=$(which podman)
    if [ -x "$path_to_podman" ] ; then
       echo "Found podman at: $path_to_podman"
       export CONTAINERRUNNER="${path_to_podman}"
       export DOCKERHUB="docker.io/library/"
    fi
   path_to_docker=$(which docker)
    if [ -x "$path_to_docker" ] ; then
       echo "Found docker at: $path_to_docker"
       export CONTAINERRUNNER="${path_to_docker}"
    fi
fi

# print out what we found
echo "CONTAINERRUNNER: $CONTAINERRUNNER"

# Give error if we have no CONTAINERRUNNER
if [ -z "$CONTAINERRUNNER" ]; then
   echo "No podman or docker found on this system."
   echo "Please set with:"
   echo "export CONTAINERRUNNER=<path to docker/podman>"
   exit 1
fi


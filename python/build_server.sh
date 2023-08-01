#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# build python_jupyter
ENVOPTION=""
if [ ! -z "$DOCKERHUB" ]; then
  ENVOPTION=" --env=DOCKERHUB"
fi
$CONTAINERRUNNER build -t python_jupyter $ENVOPTION .


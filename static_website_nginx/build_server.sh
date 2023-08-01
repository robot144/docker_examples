#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# basic nginx as a first start
ENVOPTION=""
if [ ! -z "$DOCKERHUB" ]; then
  ENVOPTION=" --env=DOCKERHUB"
fi
$CONTAINERRUNNER build -t static_website_nginx $ENVOPTION .

#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# basic nginx site
COMMAND="$CONTAINERRUNNER build -t static_website_nginx ."
echo $COMMAND
$COMMAND
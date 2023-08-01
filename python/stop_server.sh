#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# stop service
$CONTAINERRUNNER stop python_app_1 

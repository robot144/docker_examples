#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# build python_jupyter
COMMAND="$CONTAINERRUNNER build -t jupyter_julia -f Dockerfile ."
echo $COMMAND
$COMMAND


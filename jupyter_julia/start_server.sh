#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# basic nginx as a first start
# $CONTAINERRUNNER run -it --rm --name python_repl ipython
$CONTAINERRUNNER run -it --rm -d -p 8889:8888 -v $PWD/work:/home/joyvan/work --name jupyter_julia_1 jupyter_julia

# waiting for the container to start
echo "Waiting for the container to start..."
sleep 5
echo "..."
sleep 5
echo "..."

# find the token for the container
$CONTAINERRUNNER logs jupyter_julia_1 | grep token

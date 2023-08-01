#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# basic nginx as a first start
# $CONTAINERRUNNER run -it --rm --name python_repl ipython
COMMAND="$CONTAINERRUNNER run -it --rm -d -p 8888:8888 -v $PWD/work:/home/jovyan/work --name jupyter_1 jupyter"
echo $COMMAND
#$COMMAND

# find the token for the container
sleep 3
$CONTAINERRUNNER logs jupyter_1 | grep token


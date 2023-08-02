#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# find the token for the container
$CONTAINERRUNNER logs jupyter_1 | grep token

# start browser
export BROWSER="firefox"
if [ ! -f `which $BROWSER` ];then
    echo "$BROWSER not found. Select a different one to continue."
    exit 1
else
    $BROWSER http://localhost:8888/lab/tree/work
fi
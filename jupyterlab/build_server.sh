#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# build jupyter image
COMMAND="$CONTAINERRUNNER build -t jupyter ."
echo $COMMAND
$COMMAND

# checkout this repo if not already there for use in the container
# it will be mounted as a volume in the container
export REPONAME="pytorch-mnist-example"
export REPOURL="https://github.com/jiuntian/pytorch-mnist-example.git"

pushd work 
if [ ! -d "$REPONAME" ]; then
    git clone $REPOURL $REPONAME
fi
popd
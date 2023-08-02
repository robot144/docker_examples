#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# build python_jupyter
COMMAND="$CONTAINERRUNNER build -t jupyter_julia -f Dockerfile ."
echo $COMMAND
$COMMAND

# checkout this repo if not already there for use in the container
# it will be mounted as a volume in the container
export REPONAME="julia-mnist-example"
export REPOURL="https://github.com/AndreyGermanov/phones_reader.git"

pushd work 
if [ ! -d "$REPONAME" ]; then
    git clone $REPOURL $REPONAME
fi
popd
#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# Detect if we are running on a machine with a GPU
if [ ! -z "$(lsmod |grep -e '^nvidia ')" ]; then
    echo "Found NVIDIA GPU: I don't expect this to work without the nvidia-container-toolkit installed"
    cp work/requirements_gpu.txt work/requirements.txt
else
    echo "No NVIDIA GPU found"
    cp work/requirements_cpu.txt work/requirements.txt
fi

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
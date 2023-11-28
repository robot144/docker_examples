#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# run container in this folder
# $CONTAINERRUNNER run -it --rm --name python_repl ipython
export DEBUG=false
if [ $DEBUG == "true" ];then
   $CONTAINERRUNNER run -it --rm -d -p 8080:8765 --name python_app_1 python_jupyter
else
   loginctl enable-linger # keep podman process alive after logout
   $CONTAINERRUNNER run --rm -d -p 8080:8765 --name python_app_1 python_jupyter
fi

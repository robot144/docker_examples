#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# start ipython in container
$CONTAINERRUNNER run -it --rm --name python_repl python_jupyter ipython

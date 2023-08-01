#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# basic nginx as a first start
# $CONTAINERRUNNER run -it --rm --name python_repl ipython
$CONTAINERRUNNER run -it --rm -d -p 8080:8765 --name python_app_1 python_jupyter
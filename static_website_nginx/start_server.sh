#! /bin/bash
#

# detect docker or podman
. ../detect_podman_or_docker.sh

# basic nginx as a first start
#$CONTAINERRUNNER run -it --rm -d -p 8080:80 --name nginx_1 "${DOCKERHUB}nginx"
$CONTAINERRUNNER run -it --rm -d -p 8080:80 --name nginx_1 static_website_nginx
#!/bin/bash

NAME="sbp_ld_"
URL="214610392839.dkr.ecr.ap-northeast-1.amazonaws.com"
VERSION="latest"

function docker_tag_and_push () {
  docker tag ${NAME}${1}:${VERSION} ${URL}/${NAME}${1}:${VERSION}
  docker push ${URL}/${NAME}${1}:${VERSION}
}

# php-fpm
docker_tag_and_push "laravel-echo-server"
docker_tag_and_push "nginx"
docker_tag_and_push "php-fpm"




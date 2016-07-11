#!/bin/bash

PHP="/usr/bin/php"
SWAGGER="~/.composer/vendor/bin/swagger"

PROJECT=$1
WORK="/var/lib/jenkins/jobs/${PROJECT}/workspace"
TARGET="${WORK}/src/main/webapp/application"
DEST="${WORK}/src/main/webapp/apidoc"

${PHP} ${SWAGGER} ${TARGET} -o ${DEST}

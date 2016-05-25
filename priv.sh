#!/bin/bash
set -u
echo Retrieving id_rsa from ${DEPLOY_ENV}-state...
aws s3 cp s3://${DEPLOY_ENV}-state/id_rsa - | pbcopy
echo Done

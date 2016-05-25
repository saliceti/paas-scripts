#!/bin/bash
set -u
echo Retrieving cf-manifest from ${DEPLOY_ENV}-state...
aws s3 cp s3://${DEPLOY_ENV}-state/cf-manifest.yml - | less
echo Done

#!/bin/bash
set -u
echo Retrieving cf-secrets from ${DEPLOY_ENV}-state...
aws s3 cp s3://${DEPLOY_ENV}-state/cf-secrets.yml - | less
echo Done

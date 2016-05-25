#!/bin/bash
set -u
echo Retrieving bosh vcap orig from ${DEPLOY_ENV}-state...
aws s3 cp s3://${DEPLOY_ENV}-state/bosh-secrets.yml - | awk '/bosh_vcap_password_orig/ {print $2}' | pbcopy
echo Done

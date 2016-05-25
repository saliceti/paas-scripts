#!/bin/bash
set -u
echo Retrieving admin pass from ${DEPLOY_ENV}-state...
aws s3 cp s3://${DEPLOY_ENV}-state/cf-secrets.yml - | awk '/uaa_admin_password/ {print $2}' | pbcopy
echo Done

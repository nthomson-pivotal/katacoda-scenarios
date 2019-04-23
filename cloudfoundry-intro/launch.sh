#!/bin/bash

set -e

read -p 'Enter the secret passphrase: ' passphrase

if [ -z "$passphrase" ]; then
  echo "Error: You must enter a passphrase"
  exit 1
fi

response=$(curl -sL -X POST -H "X-API-Token: $passphrase" -d '' https://space-creator.apps.nialltest150.gcp.paasify.org/api/generate-space)

for s in $(echo $response | jq -r "to_entries|map(\"\(.key)=\(.value|tostring)\")|.[]" ); do
    export "$s"
    echo "$s"
done

cf login -a api.sys.nialltest150.gcp.paasify.org -u "$username" -p "$password" -o "$orgName" -s "$spaceName"
#!/bin/sh

set -e

JWT=$( ./jwt.sh )
ID=$( curl --silent -H "Authorization: bearer $JWT" $GITHUB_API_ROOT/orgs/$ORG/installation | jq -r '.id' )
TOKEN=$( curl --silent -H "Authorization: bearer $JWT" --request POST $GITHUB_API_ROOT/app/installations/$ID/access_tokens | jq -r '.token' )

echo "$TOKEN"

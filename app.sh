#!/bin/sh

set -e

JWT=$( ./jwt.sh )
curl -i -H "Authorization: bearer $JWT" $GITHUB_API_ROOT/app

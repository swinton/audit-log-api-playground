#!/bin/sh

set -e

CURSOR=$1

GH_TOKEN=$( ./installation.sh )

ARGS=(
  "-i"
  "-H" "Authorization: bearer $GH_TOKEN"
  "-H" "Accept: application/vnd.github.v3+json"
  "https://api.github.com/orgs/$ORG/audit-log?include=all&after=$CURSOR"
)

echo "Running... \n> curl ${ARGS[@]}\n" 1>&2
curl "${ARGS[@]}"

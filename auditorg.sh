#!/bin/sh

set -e

# Send additional query params, like before, after, etc.
QUERY=$1

GH_TOKEN=$( ./installation.sh )

ARGS=(
  "-i"
  "-H" "User-agent: swinton/auditorg.sh"
  "-H" "Authorization: bearer $GH_TOKEN"
  "-H" "Accept: application/vnd.github.v3+json"
  "https://api.github.com/orgs/$ORG/audit-log?$QUERY"
)

# Echo the command we're about to run to STDERR
echo "Running... \n> curl ${ARGS[@]}\n" 1>&2

# Execute the command
curl "${ARGS[@]}"

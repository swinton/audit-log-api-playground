#!/bin/sh

set -e

export ALG="RS256"
let EXP=$( date +%s )+600
jwt encode --alg $ALG --iss $GITHUB_APP_ID --exp $EXP --secret @$GITHUB_APP_PRIVATE_KEY_PATH

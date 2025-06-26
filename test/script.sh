#!/bin/bash
REPO_DIR=$PWD
CONFIG_FILE="$PWD/config.json"

export AWS_REGION=us-west-2
export AWS_ACCESS_KEY_ID=<YOUR_AWS_ACCESS_KEY_ID>
export AWS_SECRET_ACCESS_KEY=<YOUR_AWS_SECRET_ACCESS_KEY>

docker run --rm -it \
  -v "${REPO_DIR}:/usr/src/app/renovate/repo" \
  -e RENOVATE_CONFIG_FILE="/usr/src/app/renovate/repo/config.json" \
  -e LOG_LEVEL=debug \
  -e RENOVATE_PLATFORM="local" \
  -e AWS_REGION \
  -e AWS_ACCESS_KEY_ID \
  -e AWS_SECRET_ACCESS_KEY \
  renovate/renovate --require-config=ignored

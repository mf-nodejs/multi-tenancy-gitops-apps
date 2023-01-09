#!/usr/bin/env bash

# Set variables
if [[ -z ${GIT_ORG} ]]; then
  echo "Please provide environment variable GIT_ORG"
  exit 1
fi

GIT_BRANCH_TP=${GIT_BRANCH_TP:-master}
#GIT_BRANCH_USPS=${GIT_BRANCH_USPS:-master}

# Create Kubernetes Secret yaml
( echo "cat <<EOF" ; cat cntk-event-listener.yaml_template ) | \
GIT_ORG=${GIT_ORG} \
GIT_BRANCH_TP=${GIT_BRANCH_TP:-master} \
sh > cntk-event-listener.yaml
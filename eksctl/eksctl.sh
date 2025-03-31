#!/bin/bash

set -euo pipefail

if ! curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp; then
  echo "Failed to download and extract eksctl, exiting."
  exit 1
fi

if ! sudo mv /tmp/eksctl /usr/local/bin; then
  echo "Failed to move eksctl to /usr/local/bin, exiting."
  exit 1
fi

if ! eksctl version; then
  echo "Failed to verify eksctl installation, exiting."
  exit 1
fi

echo "Installation completed. Author: Abir Sarkar follow on GitHub : https://github.com/knightabir"

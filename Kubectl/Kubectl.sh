#!/bin/bash

set -euo pipefail

if ! curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.19.6/2021-01-05/bin/linux/amd64/kubectl; then
  echo "Failed to download kubectl, exiting."
  exit 1
fi

if ! chmod +x ./kubectl; then
  echo "Failed to make kubectl executable, exiting."
  exit 1
fi

if ! sudo mv ./kubectl /usr/local/bin; then
  echo "Failed to move kubectl to /usr/local/bin, exiting."
  exit 1
fi

if ! kubectl version --short --client; then
  echo "Failed to verify kubectl installation, exiting."
  exit 1
fi

echo "Installation completed. Author: Abir Sarkar (https://github.com/knightabir)"

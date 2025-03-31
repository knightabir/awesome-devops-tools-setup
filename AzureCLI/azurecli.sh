#!/bin/bash

set -euo pipefail

if ! sudo apt update; then
  echo "Failed to update package list, exiting."
  exit 1
fi

if ! sudo curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash; then
  echo "Failed to install Azure CLI, exiting."
  exit 1
fi

if ! az --version; then
  echo "Failed to verify Azure CLI installation, exiting."
  exit 1
fi

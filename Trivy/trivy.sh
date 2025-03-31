#!/bin/bash

set -euo pipefail

# Install required packages
if ! sudo apt-get install -y wget apt-transport-https gnupg lsb-release; then
  echo "Failed to install required packages, exiting."
  exit 1
fi

# Add Trivy GPG key
if ! wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -; then
  echo "Failed to add Trivy GPG key, exiting."
  exit 1
fi

# Add Trivy repository
if ! echo "deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | sudo tee -a /etc/apt/sources.list.d/trivy.list; then
  echo "Failed to add Trivy repository, exiting."
  exit 1
fi

# Update package list
if ! sudo apt-get update -y; then
  echo "Failed to update package list, exiting."
  exit 1
fi

# Install Trivy
if ! sudo apt-get install -y trivy; then
  echo "Failed to install Trivy, exiting."
  exit 1
fi

echo "Installation completed. Author: Abir Sarkar follow on GitHub : https://github.com/knightabir"

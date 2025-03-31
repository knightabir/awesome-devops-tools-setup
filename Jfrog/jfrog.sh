#!/bin/bash

set -euo pipefail

# Update Ubuntu OS
if ! sudo apt update; then
  echo "Failed to update package list, exiting."
  exit 1
fi

# Add JFrog Artifactory APT repository
if ! echo "deb https://releases.jfrog.io/artifactory/artifactory-debs xenial main" | sudo tee -a /etc/apt/sources.list.d/artifactory.list; then
  echo "Failed to add Artifactory repository, exiting."
  exit 1
fi

# Import repository GPG key
if ! curl -fsSL  https://releases.jfrog.io/artifactory/api/gpg/key/public|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/artifactory.gpg; then
  echo "Failed to import repository GPG key, exiting."
  exit 1
fi

# Update the package
if ! sudo apt update; then
  echo "Failed to update package list after adding Artifactory repository, exiting."
  exit 1
fi

# Install Artifactory
if ! sudo apt install jfrog-artifactory-oss -y; then
  echo "Failed to install Artifactory, exiting."
  exit 1
fi

# Start Artifactory
if ! sudo systemctl start artifactory.service; then
  echo "Failed to start Artifactory service, exiting."
  exit 1
fi

# Create symbolic link
if ! sudo systemctl enable artifactory.service; then
  echo "Failed to create symbolic link for Artifactory service, exiting."
  exit 1
fi

# Print success message
echo "Installation completed. Author: Abir Sarkar (https://github.com/knightabir)"

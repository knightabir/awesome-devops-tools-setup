#!/bin/bash

set -euo pipefail

# Update system package
if ! sudo apt-get update; then
  echo "Failed to update package list, exiting."
  exit 1
fi

# Install GNU software properties and curl packages
if ! sudo apt-get install -y gnupg software-properties-common; then
  echo "Failed to install required packages, exiting."
  exit 1
fi

# Install the HashiCorp GPG key
if ! wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null; then
  echo "Failed to install HashiCorp GPG key, exiting."
  exit 1
fi

# Verify the key's fingerprint
if ! gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint; then
  echo "Failed to verify the HashiCorp GPG key's fingerprint, exiting."
  exit 1
fi

# Add HashiCorp repository
if ! echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list; then
  echo "Failed to add HashiCorp repository, exiting."
  exit 1
fi

# Update package list after adding HashiCorp repository
if ! sudo apt update; then
  echo "Failed to update package list after adding HashiCorp repository, exiting."
  exit 1
fi

# Install Terraform
if ! sudo apt-get install terraform -y; then
  echo "Failed to install Terraform, exiting."
  exit 1
fi

# Verify Terraform installation
if ! terraform --version; then
  echo "Failed to verify Terraform installation, exiting."
  exit 1
fi

echo "Installation completed successfully. Author: Abir Sarkar follow on GitHub : https://github.com/knightabir"

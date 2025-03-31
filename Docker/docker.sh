## Amazon Ubuntu
#!/bin/bash

set -euo pipefail

if ! sudo apt update -y; then
  echo "Failed to update package list, exiting."
  exit 1
fi

if ! sudo apt install apt-transport-https ca-certificates curl software-properties-common -y; then
  echo "Failed to install required packages, exiting."
  exit 1
fi

if ! curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -; then
  echo "Failed to add Docker GPG key, exiting."
  exit 1
fi

if ! sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y; then
  echo "Failed to add Docker repository, exiting."
  exit 1
fi

if ! sudo apt update -y; then
  echo "Failed to update package list after adding Docker repository, exiting."
  exit 1
fi

if ! apt-cache policy docker-ce -y; then
  echo "Failed to check Docker CE version, exiting."
  exit 1
fi

if ! sudo apt install docker-ce -y; then
  echo "Failed to install Docker CE, exiting."
  exit 1
fi

if ! sudo usermod -aG docker $USER && newgrp docker; then
  echo "Failed to add current user to Docker group, exiting."
  exit 1
fi

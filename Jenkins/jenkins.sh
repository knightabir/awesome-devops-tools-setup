#!/bin/bash

set -euo pipefail

if ! sudo apt update -y; then
  echo "Failed to update package list, exiting."
  exit 1
fi

if ! sudo apt install fontconfig openjdk-17-jre -y; then
  echo "Failed to install required packages, exiting."
  exit 1
fi

if ! sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key; then
  echo "Failed to download Jenkins key, exiting."
  exit 1
fi

if ! echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null; then
  echo "Failed to add Jenkins repository, exiting."
  exit 1
fi

if ! sudo apt-get update -y; then
  echo "Failed to update package list after adding Jenkins repository, exiting."
  exit 1
fi

if ! sudo apt-get install jenkins -y; then
  echo "Failed to install Jenkins, exiting."
  exit 1
fi

echo "Installation completed. Author: Abir Sarkar (https://github.com/knightabir)"


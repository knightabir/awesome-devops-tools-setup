#!/bin/bash

set -euo pipefail

if ! sudo apt update; then
  echo "Failed to update package list, exiting."
  exit 1
fi

if ! sudo apt install docker-compose-plugin -y; then
  echo "Failed to install docker-compose plugin, exiting."
  exit 1
fi

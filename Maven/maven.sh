#!/bin/bash

set -euo pipefail

if ! sudo apt update -y; then
  echo "Failed to update package list, exiting."
  exit 1
fi

if ! sudo apt install maven -y; then
  echo "Failed to install Maven, exiting."
  exit 1
fi

echo "Installation completed. Author: Abir Sarkar (https://github.com/knightabir)"

#!/bin/bash

set -euo pipefail

# Update system package
if ! sudo apt update; then
  echo "Failed to update package list, exiting."
  exit 1
fi

# Install MySQL server
if ! sudo apt install mysql-server -y; then
  echo "Failed to install MySQL server, exiting."
  exit 1
fi

# Start MySQL server
if ! sudo systemctl start mysql.service; then
  echo "Failed to start MySQL service, exiting."
  exit 1
fi

echo "Installation completed. Author: Abir Sarkar follow on GitHub : https://github.com/knightabir"

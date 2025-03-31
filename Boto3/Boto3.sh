#!/bin/bash

set -euo pipefail

if ! sudo apt update; then
  echo "Failed to update package list, exiting."
  exit 1
fi

if ! sudo apt install python3 -y; then
  echo "Failed to install Python 3, exiting."
  exit 1
fi

if ! python3 --version; then
  echo "Failed to verify Python 3 installation, exiting."
  exit 1
fi

if ! sudo apt install python3-pip -y; then
  echo "Failed to install pip for Python 3, exiting."
  exit 1
fi

if ! sudo apt install python3-boto3 -y; then
  echo "Failed to install boto3 for Python 3, exiting."
  exit 1
fi

if ! python3 -c "import boto3; print(boto3.__version__)"; then
  echo "Failed to verify boto3 installation, exiting."
  exit 1
fi

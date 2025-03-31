#!/bin/bash

set -euo pipefail

if ! eksctl delete cluster --name wanderlust --region us-east-1; then
  echo "Failed to delete EKS cluster, exiting."
  exit 1
fi

echo "EKS cluster deleted successfully."
echo "Author: Abir Sarkar follow on GitHub : https://github.com/knightabir"

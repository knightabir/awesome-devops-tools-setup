#!/bin/bash

set -euo pipefail

if ! eksctl create cluster --name=wanderlust --region=us-east-1 --without-nodegroup; then
  echo "Failed to create EKS cluster, exiting."
  exit 1
fi

if ! eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster wanderlust --approve; then
  echo "Failed to associate IAM OIDC provider, exiting."
  exit 1
fi

if ! eksctl create nodegroup --cluster=wanderlust --region=us-east-1 --node-type=t2.medium --nodes-min=2 --nodes-max=2 --node-volume-size=28; then
  echo "Failed to create EKS nodegroup, exiting."
  exit 1
fi

echo "EKS cluster and nodegroup created successfully."
echo "Author: Abir Sarkar follow on GitHub : https://github.com/knightabir"

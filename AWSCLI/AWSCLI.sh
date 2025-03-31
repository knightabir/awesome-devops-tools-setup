#!/bin/bash

# download the zip file
echo "Downloading aws cli v2..."
if ! curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"; then
  echo "Failed to download aws cli v2, exiting."
  exit 1
fi

# install unzip if it is not present
echo "Installing unzip..."
if ! sudo apt install unzip; then
  echo "Failed to install unzip, exiting."
  exit 1
fi

# unzip the file
echo "Unzipping the file..."
if ! unzip awscliv2.zip; then
  echo "Failed to unzip the file, exiting."
  exit 1
fi

# install aws cli v2
echo "Installing aws cli v2..."
if ! sudo ./aws/install; then
  echo "Failed to install aws cli v2, exiting."
  exit 1
fi

# check version
echo "Checking aws cli v2 version..."
if ! aws --version; then
  echo "Failed to check aws cli v2 version, exiting."
  exit 1
fi

# configure aws cli v2
echo "Configuring aws cli v2..."
if ! aws configure; then
  echo "Failed to configure aws cli v2, exiting."
  exit 1
fi

# Amazon EKS Cluster Management Scripts

This repository contains scripts to install `eksctl`, create an Amazon EKS cluster, and delete the cluster.

## Overview

The scripts perform the following tasks:
- Install `eksctl` (a CLI tool for EKS management)
- Create an EKS cluster with a node group
- Delete an EKS cluster

## Prerequisites

Before running these scripts, ensure your system has:
- `sudo` privileges
- Internet connectivity
- AWS CLI configured with appropriate IAM permissions
- `eksctl` installed (or use the provided installation script)

## Installation Steps

### 1. Install `eksctl`

Download and install `eksctl`:
```bash
curl -O https://raw.githubusercontent.com/knightabir/awesome-devops-tools-setup/refs/heads/main/eksctl/eksctl.sh
chmod +x eksctl.sh
./eksctl.sh
```

Verify the installation:
```bash
eksctl version
```

### 2. Create an EKS Cluster

Run the following commands to create an EKS cluster named `wanderlust`:
```bash
curl -O https://raw.githubusercontent.com/knightabir/awesome-devops-tools-setup/refs/heads/main/eksctl/create-eks-cluster.sh
chmod +x create-eks-cluster.sh
./create-eks-cluster.sh
```

### 3. Delete an EKS Cluster

To delete the cluster, run:
```bash
curl -O https://raw.githubusercontent.com/knightabir/awesome-devops-tools-setup/refs/heads/main/eksctl/delete-eks-cluster.sh
chmod +x delete-eks-cluster.sh
./delete-eks-cluster.sh
```

## What Gets Installed

- `eksctl` (installed in `/usr/local/bin`)
- An EKS cluster (`wanderlust`) in `us-east-1`
- An associated IAM OIDC provider
- A node group with `t2.medium` instances

## Verification

After setting up, verify the cluster:
```bash
aws eks describe-cluster --name wanderlust --region us-east-1
```

## Troubleshooting

If any step fails:
- Ensure you have `eksctl` installed and in your system's `PATH`
- Verify AWS credentials and IAM permissions
- Check for internet connectivity
- Run `aws eks list-clusters` to check existing clusters

## Uninstallation

To remove `eksctl`:
```bash
sudo rm /usr/local/bin/eksctl
```

To delete the EKS cluster:
```bash
./delete-eks-cluster.sh
```

## Additional Resources

- [Amazon EKS Documentation](https://docs.aws.amazon.com/eks/)
- [eksctl GitHub Repository](https://github.com/weaveworks/eksctl)
- [AWS CLI Configuration](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)
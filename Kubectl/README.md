# kubectl Installer for Amazon EKS on Ubuntu

This script automates the installation of `kubectl` for managing Amazon EKS clusters on Ubuntu systems.

## Overview

The installer script performs the following tasks:
- Downloads the `kubectl` binary for Amazon EKS
- Grants execution permission to the binary
- Moves `kubectl` to `/usr/local/bin` for system-wide access
- Verifies the installation

## Prerequisites

Before running this script, ensure your system has:
- `sudo` privileges
- Internet connectivity
- `apt` package manager (for Ubuntu-based systems)
- Minimum 100MB of free disk space

## Installation Steps

1. Download the installer script:
   ```bash
   curl -O https://raw.githubusercontent.com/knightabir/awesome-devops-tools-setup/refs/heads/main/Kubectl/Kubectl.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x install-kubectl.sh
   ```

3. Run the installer:
   ```bash
   ./install-kubectl.sh
   ```

## What Gets Installed

- `kubectl` binary in `/usr/local/bin/kubectl`

## Verification

After installation, verify `kubectl` is working:
```bash
kubectl version --short --client
```

## Troubleshooting

If the installation fails:
- Ensure you have a stable internet connection
- Verify you have sufficient disk space
- Check that you have the necessary permissions
- Run `kubectl version --short --client` to confirm the installation

## Uninstallation

To remove `kubectl` from your system, run:
```bash
sudo rm /usr/local/bin/kubectl
```

## Additional Resources

- [Kubernetes kubectl Documentation](https://kubernetes.io/docs/tasks/tools/install-kubectl/)


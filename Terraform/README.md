# Terraform Installer for Ubuntu

This script automates the installation of Terraform on Ubuntu systems.

## Overview

The installer script performs the following tasks:
- Updates the package list
- Installs required dependencies
- Adds the HashiCorp repository
- Installs Terraform
- Verifies the installation

## Prerequisites

Before running this script, ensure your system has:
- `sudo` privileges
- Internet connectivity
- `apt` package manager (for Ubuntu-based systems)
- Minimum 500MB of free disk space

## Installation Steps

1. Download the installer script:
   ```bash
   curl -O https://raw.githubusercontent.com/your-repo/scripts/main/install-terraform.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x install-terraform.sh
   ```

3. Run the installer:
   ```bash
   ./install-terraform.sh
   ```

## What Gets Installed

- Terraform binary in `/usr/bin/terraform`
- HashiCorp repository added to the system
- GPG key for package verification

## Verification

After installation, verify Terraform is installed correctly:
```bash
terraform --version
```

## Troubleshooting

If the installation fails:
- Ensure you have a stable internet connection
- Verify you have sufficient disk space
- Check that you have the necessary permissions

## Uninstallation

To remove Terraform from your system, run:
```bash
sudo apt remove --purge terraform -y
```

## Additional Resources

- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)


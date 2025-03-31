# Azure CLI Installer

This script automates the installation of the Azure Command-Line Interface (CLI) on Debian/Ubuntu-based Linux systems.

## Overview

The installer script performs the following tasks:
- Updates your system's package repository
- Downloads and runs the official Microsoft Azure CLI installation script
- Verifies the installation was successful

## Prerequisites

Before running this script, ensure your system has:
- `sudo` privileges
- Internet connectivity
- Debian/Ubuntu-based Linux distribution (uses `apt` package manager)
- Bash shell

## Installation Steps

1. Download the installer script:
   ```bash
   curl -O https://raw.githubusercontent.com/knightabir/awesome-devops-tools-setup/refs/heads/main/AzureCLI/azurecli.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x install-azure-cli.sh
   ```

3. Run the installer:
   ```bash
   ./install-azure-cli.sh
   ```

## What Gets Installed

- Azure CLI package and its dependencies
- The `az` command will be available system-wide

## Verification

After installation, the script automatically verifies the Azure CLI is working by running:
```bash
az --version
```

This displays the version of Azure CLI and its components that were installed.

## Next Steps After Installation

After installation, you'll need to authenticate with Azure:

1. Log in to your Azure account:
   ```bash
   az login
   ```

2. Set your subscription (if you have multiple):
   ```bash
   az account set --subscription "Your Subscription Name"
   ```

## Troubleshooting

If the installation fails:
- Ensure you have a stable internet connection
- Verify you have the necessary permissions
- Check that the `apt` package manager is working correctly
- If you're behind a proxy, make sure it's properly configured

## Uninstallation

To uninstall Azure CLI, run:
```bash
sudo apt remove azure-cli -y
sudo apt autoremove -y
```

## Additional Resources

- [Azure CLI Documentation](https://docs.microsoft.com/en-us/cli/azure/)
- [Azure CLI Reference](https://docs.microsoft.com/en-us/cli/azure/reference-index)
- [Azure CLI GitHub Repository](https://github.com/Azure/azure-cli)
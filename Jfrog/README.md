# JFrog Artifactory Installer for Ubuntu

This script automates the installation of JFrog Artifactory OSS on an Ubuntu system.

## Overview

The installer script performs the following tasks:
- Updates the package list
- Adds the JFrog Artifactory APT repository
- Imports the repository GPG key
- Installs JFrog Artifactory OSS
- Starts and enables the Artifactory service

## Prerequisites

Before running this script, ensure your system has:
- `sudo` privileges
- Internet connectivity
- `apt` package manager (for Ubuntu-based systems)
- Minimum 4GB RAM and 10GB free disk space

## Installation Steps

1. Download the installer script:
   ```bash
   curl -O https://raw.githubusercontent.com/knightabir/awesome-devops-tools-setup/refs/heads/main/Jfrog/jfrog.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x install-artifactory.sh
   ```

3. Run the installer:
   ```bash
   ./install-artifactory.sh
   ```

## What Gets Installed

- JFrog Artifactory OSS
- Systemd service for Artifactory (`artifactory.service`)
- Artifactory APT repository and GPG key

## Verification

After installation, verify Artifactory is running:
```bash
sudo systemctl status artifactory.service
```

To access Artifactory, open your browser and go to:
```
http://localhost:8081/artifactory
```

## Troubleshooting

If the installation fails:
- Ensure you have a stable internet connection
- Verify you have sufficient disk space
- Check that you have the necessary permissions
- Run `sudo apt update` manually to confirm the package manager is working

## Uninstallation

To remove Artifactory from your system, run:
```bash
sudo apt remove --purge jfrog-artifactory-oss -y
sudo apt autoremove -y
sudo rm -rf /var/opt/jfrog/artifactory
```

## Additional Resources

- [JFrog Artifactory Documentation](https://www.jfrog.com/confluence/display/JFROG/Artifactory)


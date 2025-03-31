# Jenkins Installer for Ubuntu

This script automates the installation of Jenkins on an Ubuntu system.

## Overview

The installer script performs the following tasks:
- Updates the package list
- Installs required dependencies (Java and Fontconfig)
- Adds the official Jenkins repository
- Installs Jenkins

## Prerequisites

Before running this script, ensure your system has:
- `sudo` privileges
- Internet connectivity
- `apt` package manager (for Ubuntu-based systems)
- Minimum 1GB RAM and 2GB free disk space

## Installation Steps

1. Download the installer script:
   ```bash
   curl -O https://raw.githubusercontent.com/your-repo/scripts/main/install-jenkins.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x install-jenkins.sh
   ```

3. Run the installer:
   ```bash
   ./install-jenkins.sh
   ```

## What Gets Installed

- OpenJDK 17 (required for Jenkins)
- Jenkins service (`jenkins`)
- Jenkins repository and GPG key

## Verification

After installation, verify Jenkins is running:
```bash
sudo systemctl status jenkins
```

To access Jenkins, open your browser and go to:
```
http://localhost:8080
```

To retrieve the initial admin password:
```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

## Troubleshooting

If the installation fails:
- Ensure you have a stable internet connection
- Verify you have sufficient disk space
- Check that you have the necessary permissions
- Run `sudo apt update` manually to confirm the package manager is working

## Uninstallation

To remove Jenkins from your system, run:
```bash
sudo apt remove --purge jenkins -y
sudo apt autoremove -y
sudo rm -rf /var/lib/jenkins
```

## Additional Resources

- [Jenkins Documentation](https://www.jenkins.io/doc/)
- [Jenkins Installation Guide](https://www.jenkins.io/doc/book/installing/)
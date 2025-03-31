# Docker CE Installer for Ubuntu

This script automates the installation of Docker Community Edition (CE) on Ubuntu systems.

## Overview

The installer script performs the following tasks:
- Updates the package list
- Installs required dependencies
- Adds the Docker GPG key
- Adds the official Docker repository
- Installs Docker CE
- Grants the current user access to Docker

## Prerequisites

Before running this script, ensure your system has:
- `sudo` privileges
- Internet connectivity
- `apt` package manager (for Ubuntu-based systems)
- Minimum 500MB of free disk space

## Installation Steps

1. Download the installer script:
   ```bash
   curl -O https://raw.githubusercontent.com/knightabir/awesome-devops-tools-setup/refs/heads/main/Docker/docker.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x install-docker.sh
   ```

3. Run the installer:
   ```bash
   ./install-docker.sh
   ```

4. Log out and log back in to apply the group changes.

## What Gets Installed

- Docker CE (`docker-ce`)
- Required dependencies (`apt-transport-https`, `ca-certificates`, `curl`, `software-properties-common`)

## Verification

After installation, verify Docker is working:
```bash
docker --version
docker run hello-world
```

## Troubleshooting

If the installation fails:
- Ensure you have a stable internet connection
- Verify you have sufficient disk space
- Check that you have the necessary permissions
- Run `sudo apt update` manually to confirm the package manager is working

## Uninstallation

To remove Docker CE, run:
```bash
sudo apt remove --purge docker-ce -y
sudo apt autoremove -y
sudo rm -rf /var/lib/docker
```

## Additional Resources

- [Docker Documentation](https://docs.docker.com/)
- [Docker CE Installation Guide](https://docs.docker.com/engine/install/ubuntu/)
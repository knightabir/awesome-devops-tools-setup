# Docker Compose Plugin Installer for Ubuntu

This script automates the installation of the Docker Compose plugin on Ubuntu systems.

## Overview

The installer script performs the following tasks:
- Updates the package list
- Installs the Docker Compose plugin

## Prerequisites

Before running this script, ensure your system has:
- `sudo` privileges
- Internet connectivity
- `apt` package manager (for Ubuntu-based systems)
- Docker installed on the system
- Minimum 100MB of free disk space

## Installation Steps

1. Download the installer script:
   ```bash
   curl -O https://raw.githubusercontent.com/knightabir/awesome-devops-tools-setup/refs/heads/main/Docker-compose/docker-compose.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x install-docker-compose-plugin.sh
   ```

3. Run the installer:
   ```bash
   ./install-docker-compose-plugin.sh
   ```

## What Gets Installed

- Docker Compose plugin (`docker-compose-plugin`)

## Verification

After installation, verify Docker Compose is working:
```bash
docker compose version
```

## Troubleshooting

If the installation fails:
- Ensure you have a stable internet connection
- Verify you have sufficient disk space
- Check that you have the necessary permissions
- Run `sudo apt update` manually to confirm the package manager is working
- Ensure Docker is installed before running the script

## Uninstallation

To remove the Docker Compose plugin, run:
```bash
sudo apt remove --purge docker-compose-plugin -y
sudo apt autoremove -y
```

## Additional Resources

- [Docker Compose Documentation](https://docs.docker.com/compose/)


# MySQL Server Installer for Ubuntu

This script automates the installation of MySQL Server on Ubuntu systems.

## Overview

The installer script performs the following tasks:
- Updates the package list
- Installs MySQL Server
- Starts the MySQL service

## Prerequisites

Before running this script, ensure your system has:
- `sudo` privileges
- Internet connectivity
- `apt` package manager (for Ubuntu-based systems)
- Minimum 500MB of free disk space

## Installation Steps

1. Download the installer script:
   ```bash
   curl -O https://raw.githubusercontent.com/your-repo/scripts/main/install-mysql.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x install-mysql.sh
   ```

3. Run the installer:
   ```bash
   ./install-mysql.sh
   ```

## What Gets Installed

- MySQL Server in `/usr/bin/mysql`
- MySQL service managed by `systemctl`

## Verification

After installation, verify MySQL is running:
```bash
sudo systemctl status mysql.service
```

## Troubleshooting

If the installation fails:
- Ensure you have a stable internet connection
- Verify you have sufficient disk space
- Check that you have the necessary permissions
- Run `sudo systemctl status mysql.service` to check for errors

## Uninstallation

To remove MySQL Server from your system, run:
```bash
sudo apt remove --purge mysql-server -y
```

## Additional Resources

- [MySQL Documentation](https://dev.mysql.com/doc/)


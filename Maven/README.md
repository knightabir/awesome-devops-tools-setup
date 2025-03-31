# Apache Maven Installer for Ubuntu

This script automates the installation of Apache Maven on Ubuntu systems.

## Overview

The installer script performs the following tasks:
- Updates the package list
- Installs Apache Maven
- Verifies the installation

## Prerequisites

Before running this script, ensure your system has:
- `sudo` privileges
- Internet connectivity
- `apt` package manager (for Ubuntu-based systems)
- Minimum 250MB of free disk space

## Installation Steps

1. Download the installer script:
   ```bash
   curl -O https://raw.githubusercontent.com/your-repo/scripts/main/install-maven.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x install-maven.sh
   ```

3. Run the installer:
   ```bash
   ./install-maven.sh
   ```

## What Gets Installed

- Apache Maven in `/usr/bin/mvn`

## Verification

After installation, verify Maven is working:
```bash
mvn -version
```

## Troubleshooting

If the installation fails:
- Ensure you have a stable internet connection
- Verify you have sufficient disk space
- Check that you have the necessary permissions
- Run `mvn -version` to confirm the installation

## Uninstallation

To remove Apache Maven from your system, run:
```bash
sudo apt remove --purge maven -y
```

## Additional Resources

- [Apache Maven Documentation](https://maven.apache.org/)


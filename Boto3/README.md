# Python and Boto3 Installer

This script automates the installation of Python 3, pip, and Boto3 on Ubuntu systems.

## Overview

The installer script performs the following tasks:
- Updates the package list
- Installs Python 3
- Installs pip (Python package manager)
- Installs Boto3 (AWS SDK for Python)
- Verifies the installation

## Prerequisites

Before running this script, ensure your system has:
- `sudo` privileges
- Internet connectivity
- `apt` package manager (for Ubuntu-based systems)
- Minimum 200MB of free disk space

## Installation Steps

1. Download the installer script:
   ```bash
   curl -O https://raw.githubusercontent.com/knightabir/awesome-devops-tools-setup/refs/heads/main/Boto3/Boto3.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x install-python-boto3.sh
   ```

3. Run the installer:
   ```bash
   ./install-python-boto3.sh
   ```

## What Gets Installed

- Python 3 (`python3`)
- Pip for Python 3 (`python3-pip`)
- Boto3 (`python3-boto3`)

## Verification

After installation, verify the components:
```bash
python3 --version
pip3 --version
python3 -c "import boto3; print(boto3.__version__)"
```

## Troubleshooting

If the installation fails:
- Ensure you have a stable internet connection
- Verify you have sufficient disk space
- Check that you have the necessary permissions
- Run `sudo apt update` manually to confirm the package manager is working

## Uninstallation

To remove Python 3, pip, and Boto3, run:
```bash
sudo apt remove --purge python3 python3-pip python3-boto3 -y
sudo apt autoremove -y
```

## Additional Resources

- [Python Documentation](https://docs.python.org/3/)
- [Pip Documentation](https://pip.pypa.io/en/stable/)
- [Boto3 Documentation](https://boto3.amazonaws.com/v1/documentation/api/latest/index.html)


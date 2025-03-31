# AWS CLI Installer

This script automates the installation of AWS CLI version 2 on Linux systems.

## Overview

The installer script performs the following tasks:
- Downloads AWS CLI v2 installation package
- Installs necessary dependencies
- Extracts and installs AWS CLI v2
- Verifies the installation
- Runs the initial AWS configuration

## Prerequisites

Before running this script, ensure your system has:
- `sudo` privileges
- Internet connectivity
- `apt` package manager (for Ubuntu/Debian-based systems)
- Minimum 250MB of free disk space

## Installation Steps

1. Download the installer script:
   ```bash
   curl -O https://raw.githubusercontent.com/knightabir/awesome-devops-tools-setup/refs/heads/main/AWSCLI/AWSCLI.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x install-aws-cli.sh
   ```

3. Run the installer:
   ```bash
   ./install-aws-cli.sh
   ```

4. During installation, you will be prompted to enter your AWS credentials:
   - AWS Access Key ID
   - AWS Secret Access Key
   - Default region name (e.g., us-east-1)
   - Default output format (json, text, or yaml)

## What Gets Installed

- AWS CLI v2 in `/usr/local/bin/aws`
- AWS CLI completion script in `/usr/local/bin/aws_completer`

## Verification

After installation, verify AWS CLI is working by running:
```bash
aws --version
```

## Troubleshooting

If the installation fails:
- Ensure you have a stable internet connection
- Verify you have sufficient disk space
- Check that you have the necessary permissions
- Make sure the `apt` package manager is working correctly

## Uninstallation

To uninstall AWS CLI v2, run:
```bash
sudo rm -rf /usr/local/aws-cli
sudo rm /usr/local/bin/aws
sudo rm /usr/local/bin/aws_completer
```

## Additional Resources

- [AWS CLI Documentation](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
- [AWS CLI Configuration Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)
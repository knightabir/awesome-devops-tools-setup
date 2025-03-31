# Trivy Installer for Ubuntu

This script automates the installation of [Trivy](https://aquasecurity.github.io/trivy/), a vulnerability scanner for containers and other artifacts, on Ubuntu systems.

## Overview

The installer script performs the following tasks:
- Installs required dependencies
- Adds the Trivy GPG key and repository
- Updates the package list
- Installs Trivy

## Prerequisites

Before running this script, ensure your system has:
- `sudo` privileges
- Internet connectivity
- `apt` package manager (for Ubuntu-based systems)

## Installation Steps

1. Download the installer script:
   ```bash
   curl -O https://raw.githubusercontent.com/your-repo/scripts/main/install-trivy.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x install-trivy.sh
   ```

3. Run the installer:
   ```bash
   ./install-trivy.sh
   ```

## What Gets Installed

- Trivy binary available in the system path

## Verification

After installation, verify Trivy is working:
```bash
trivy --version
```

## Troubleshooting

If the installation fails:
- Ensure you have a stable internet connection
- Verify you have the necessary permissions
- Run `sudo apt-get update` and retry

## Uninstallation

To remove Trivy from your system, run:
```bash
sudo apt-get remove --purge trivy -y
```

## Additional Resources

- [Trivy Documentation](https://aquasecurity.github.io/trivy/)

# Trivy Installer for Ubuntu

This script automates the installation of [Trivy](https://aquasecurity.github.io/trivy/), a vulnerability scanner for containers and other artifacts, on Ubuntu systems.

## Overview

The installer script performs the following tasks:
- Installs required dependencies
- Adds the Trivy GPG key and repository
- Updates the package list
- Installs Trivy

## Prerequisites

Before running this script, ensure your system has:
- `sudo` privileges
- Internet connectivity
- `apt` package manager (for Ubuntu-based systems)

## Installation Steps

1. Download the installer script:
   ```bash
   curl -O https://raw.githubusercontent.com/your-repo/scripts/main/install-trivy.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x install-trivy.sh
   ```

3. Run the installer:
   ```bash
   ./install-trivy.sh
   ```

## What Gets Installed

- Trivy binary available in the system path

## Verification

After installation, verify Trivy is working:
```bash
trivy --version
```

## Troubleshooting

If the installation fails:
- Ensure you have a stable internet connection
- Verify you have the necessary permissions
- Run `sudo apt-get update` and retry

## Uninstallation

To remove Trivy from your system, run:
```bash
sudo apt-get remove --purge trivy -y
```

## Additional Resources

- [Trivy Documentation](https://aquasecurity.github.io/trivy/)


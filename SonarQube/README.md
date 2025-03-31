# SonarQube Container Setup

This script automates the setup of a [SonarQube](https://www.sonarqube.org/) container using Docker.

## Overview

The script performs the following tasks:
- Pulls and runs the SonarQube LTS Community Edition container
- Maps port `9000` for web access
- Runs the container in detached mode

## Prerequisites

Before running this script, ensure you have:
- `sudo` privileges
- [Docker installed](https://docs.docker.com/get-docker/)
- Internet connectivity to pull the container image

## Installation Steps

1. Download the setup script:
   ```bash
   curl -O https://raw.githubusercontent.com/your-repo/scripts/main/install-sonarqube.sh
   ```

2. Make the script executable:
   ```bash
   chmod +x install-sonarqube.sh
   ```

3. Run the installer:
   ```bash
   ./install-sonarqube.sh
   ```

## Accessing SonarQube

Once the container is running, access the SonarQube UI at:
```
http://localhost:9000
```
The default login credentials are:
- **Username:** admin
- **Password:** admin

## Verification

Check if the container is running:
```bash
docker ps | grep sonarqube
```

## Troubleshooting

If SonarQube does not start:
- Ensure Docker is running
- Verify that port `9000` is not in use
- Check the container logs:
  ```bash
  docker logs sonarqube
  ```

## Uninstallation

To stop and remove the SonarQube container, run:
```bash
docker stop sonarqube && docker rm sonarqube
```

## Additional Resources

- [SonarQube Documentation](https://docs.sonarqube.org/)
# 🚀 DevOps Tools Setup Scripts

## Overview
This repository provides automated installation scripts for essential DevOps tools and services. Each script is designed to install and configure a specific tool efficiently on Ubuntu-based systems. Whether you're setting up Kubernetes, Jenkins, Terraform, MySQL, or other DevOps tools, this repository will help streamline your infrastructure setup.

## 📌 Key Features
- **Automated Installation**: Scripts handle dependencies and configurations.
- **Error Handling**: Each script includes error-checking mechanisms.
- **SEO-Optimized & Well-Documented**: Every script comes with detailed installation instructions.
- **Easy-to-Use**: Just download, make executable, and run!

## 📁 Repository Structure
```
├── eksctl/                 # Scripts for Amazon EKS cluster setup
│   ├── create-eks-cluster.sh
│   ├── delete-eks-cluster.sh
│   ├── eksctl.sh
├── docker/                 # Docker installation and setup
│   ├── install-docker.sh
│   ├── install-docker-compose.sh
├── kubernetes/             # Kubernetes tools
│   ├── install-kubectl.sh
├── jenkins/                # Jenkins installation
│   ├── install-jenkins.sh
├── mysql/                  # MySQL database installation
│   ├── install-mysql.sh
├── terraform/              # Terraform installation
│   ├── install-terraform.sh
├── jfrog/                  # JFrog Artifactory installation
│   ├── install-artifactory.sh
├── trivy/                  # Trivy vulnerability scanner installation
│   ├── install-trivy.sh
├── sonarqube/              # SonarQube setup with Docker
│   ├── install-sonarqube.sh
├── README.md               # Documentation (this file)
```

## 🛠 Installation & Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/knightabir/awesome-devops-tools-setup.git
   ```
2. Navigate to the required tool folder:
   ```bash
   cd docker
   ```
3. Make the script executable:
   ```bash
   chmod +x install-docker.sh
   ```
4. Run the script:
   ```bash
   ./install-docker.sh
   ```

## 📝 Available Scripts

### 🚀 Kubernetes & Cloud Tools
- **Amazon EKS**: Create and manage Kubernetes clusters on AWS.
- **Kubectl**: CLI for Kubernetes cluster management.

### 🛠 CI/CD & DevOps Tools
- **Jenkins**: Automate software development with CI/CD.
- **Terraform**: Infrastructure as Code (IaC) for cloud provisioning.
- **JFrog Artifactory**: Manage and distribute software artifacts.

### 🐳 Containerization
- **Docker**: Install and configure Docker.
- **Docker Compose**: Manage multi-container applications.
- **Trivy**: Vulnerability scanner for containers.
- **SonarQube**: Static code analysis for security and quality.

### 💾 Databases
- **MySQL**: Install and configure MySQL database server.

## ✅ Verification
After installation, verify the tools:
```bash
kubectl version --client
terraform --version
docker --version
mysql --version
```

## 🔄 Uninstallation
To remove a tool, use package managers like `apt-get remove`, or delete Docker containers as needed.

## 📖 Resources
- [AWS EKS Documentation](https://docs.aws.amazon.com/eks/)
- [Jenkins Docs](https://www.jenkins.io/doc/)
- [Terraform Docs](https://developer.hashicorp.com/terraform/docs)
- [SonarQube Docs](https://docs.sonarqube.org/)

## 👤 Author
Developed by **Abir Sarkar**  
📌 GitHub: [@knightabir](https://github.com/knightabir)

## 📜 License
This repository is open-source under the [MIT License](LICENSE). Feel free to contribute and improve the scripts!

---

🔥 **Optimized for SEO**: DevOps automation scripts, Kubernetes, Docker, Jenkins, Terraform, AWS EKS, CI/CD pipelines, Infrastructure as Code (IaC).


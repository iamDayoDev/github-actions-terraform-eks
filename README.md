# GitHub Actions Terraform EKS

This repository demonstrates how to automate the provisioning and management of an AWS Elastic Kubernetes Service (EKS) cluster using Terraform and GitHub Actions

## Overview

The project provides a complete Infrastructure as Code (IaC) workflow for deploying and managing an EKS cluster on AWS. It leverages GitHub Actions for CI/CD automation, enabling you to apply Terraform configurations directly from your repository.

## Features

- **Terraform Modules:** Modular and reusable Terraform code for EKS, VPC, and related AWS resources.
- **GitHub Actions CI/CD:** Automated workflows for Terraform plan, apply, and destroy.
- **State Management:** Remote state storage (e.g., S3 backend) for safe collaboration.
- **Secrets Management:** Secure handling of AWS credentials and sensitive data via GitHub Secrets.
- **Best Practices:** Follows recommended patterns for infrastructure automation and security.

## Directory Structure

```
.
├── .github/workflows/      # GitHub Actions workflow files
├── terraform/              # Root Terraform configuration
├── README.md               # Project documentation
```

## Prerequisites

- AWS account with permissions to create EKS and related resources
- [Terraform CLI](https://www.terraform.io/downloads.html)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- GitHub repository with Actions enabled

## Getting Started

1. **Clone the repository:**
    ```sh
    git clone https://github.com/iamDayoDev/github-actions-terraform-eks.git
    cd github-actions-terraform-eks
    ```

2. **Configure AWS Credentials:**
    - Add `AWS_ACCESS_KEY_ID`, `AWS_REGION and `AWS_SECRET_ACCESS_KEY` as GitHub repository secrets.

3. **Review and Edit Terraform Variables:**
    - Update variables in `terraform/variables.tf` as needed.

4. **GitHub Actions Workflows:**
    - Workflows in `.github/workflows/` will automatically run `terraform plan` on pull requests and `terraform apply` on merges to the main branch.

5. **Manual Terraform Usage (optional):**
    ```sh
    cd terraform
    terraform init
    terraform plan
    terraform apply
    ```

## Customization

- Modify or extend the Terraform modules in `modules/` to fit your infrastructure needs.
- Adjust GitHub Actions workflows for custom approval steps or notifications.

## Security

- Never commit AWS credentials or sensitive data.
- Use GitHub Secrets for all sensitive information.
- Review IAM permissions and restrict as necessary.

## Cleanup

To destroy all resources:

```sh
cd terraform
terraform destroy
```
Or trigger the `destroy` workflow in GitHub Actions.

## License

This project is licensed under the MIT License.

## Contributing

Contributions are welcome! Please open issues or pull requests for improvements.

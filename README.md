# terraform-aws-ssm
Get vault information stored on AWS Secrets Manager

# Terraform Infrastructure as Code (IaC) Repository

This repository contains Terraform code to provision and manage infrastructure on Amazon Web Services using Infrastructure as Code (IaC) principles.

## Prerequisites

Before you begin, ensure you have the following tools installed:

- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://aws.amazon.com/cli/) 

You'll also need appropriate permissions and access credentials for your cloud provider.

## Usage

1. Clone this repository to your local machine:

```bash
git clone git@github.com:xavierventeo/terraform-aws-ssm.git
```

2. Navigate to the repository directory:

```bash
cd terraform-aws-ssm
```

3. Initialize Terraform:

```bash
terraform init
```

4. Plan the infrastructure changes:

```bash
terraform plan
```

5. Apply the infrastructure changes to your AWS Account:

```bash
terraform apply
```

Confirm the action by typing 'yes' when prompted.

## Cleanup

To destroy the infrastructure provisioned by Terraform, run:

```bash
terraform destroy
```

Confirm the action by typing 'yes' when prompted.



 

 

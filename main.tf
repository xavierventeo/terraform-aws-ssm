# AWS provider configuration
provider "aws" {
  region = "eu-west-1" # Europe (Ireland)
}

# Retreive sensitive Allowed IPs record from AWS Secrets Manager
data "aws_secretsmanager_secret" "allowed_ip_address" {
  name = "AllowedIpAddress"
}
data "aws_secretsmanager_secret_version" "allowed_ip_address_version" {
  secret_id = data.aws_secretsmanager_secret.allowed_ip_address.id
}

# Get the vault value and store it in a local variable could be use in the terraform file
locals {
  allowed_ip = jsondecode(data.aws_secretsmanager_secret_version.allowed_ip_address_version.secret_string)["allowed_ip_address"]
}

# Refer allowed_ip local variable as: [local.allowed_ip]
# Protected by design to print vaults using output

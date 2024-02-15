# **DEVOPSAI **

# File: providers.tf
# Description: Terraform provider configuration.
# Purpose: Specifies the required Terraform provider for AWS and its version.

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.36.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

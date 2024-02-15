# Terraform AWS Infrastructure Provisioning

## Overview

This Terraform project automates the provisioning of AWS infrastructure, including VPC, subnets, and EC2 instances. It simplifies the process of setting up a basic AWS environment for various applications or services.

## Table of Contents

1. [Prerequisites](#prerequisites)
2. [Usage](#usage)
3. [Customization](#customization)
4. [Contributing](#contributing)

## Prerequisites

Before using this Terraform configuration, ensure you have the following prerequisites:

- Terraform installed on your machine. You can download it from [here](https://www.terraform.io/downloads.html).
- AWS credentials configured on your machine or environment. Follow the instructions [here](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html) to set up AWS CLI credentials.

## Usage

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/sanjukuruvilla/TF_VPC.git
2. Navigate to the directory containing the Terraform configuration files:
   ```bash
   cd TF_VPC
3. Initialize Terraform:
   ```bash
   terraform init
4. Review the variables in variables.tf and customize them according to your requirements. You can modify values such as the AWS region, VPC CIDR block, subnet CIDR blocks, instance types, etc.
5. Create a terraform.tfvars file and provide values for the variables defined in variables.tf. You can use values.tfvars as a template.
6. Apply the Terraform configuration to provision the AWS infrastructure:
   ```bash
   terraform apply
7. When applying the Terraform configuration, specify the `.tfvars` file using the `-var-file` flag also `-var` flag for passing the *userdata* script file:

   ```bash
   terraform apply -var-file="values.tfvars" -var 'user_data="userdata.sh"' #assuming the userdata.sh is in same location where terraform files present
   ```

   This Terraform ad-hoc command instructs Terraform to read variable values from the specified `.tfvars` file during the `apply` operation.

   Using `.tfvars` files in this manner allows for easier management of configuration options, especially when working with multiple environments or configurations.

## Customization

To customize this Terraform configuration for your specific needs, you can modify the following variables in variables.tf:

`aws_region`: The AWS region where resources will be created.

`vpc_cidr_block`: CIDR block for the VPC.

`public_subnet_cidr_block`: CIDR block for the public subnet.

`private_subnet_cidr_block`: CIDR block for the private subnet.

`key_pair_name`: Name of the SSH key pair for EC2 instances.

`ami_id`: AMI ID for EC2 instances.

`instance_type`: Instance type for EC2 instances.

`user_data`: User data script to be executed on instance launch.

`public_instance_count`: Desired number of public instances.

`private_instance_count`: Desired number of private instances.

Certainly! Here's a bonus tip for users on how to use a `.tfvars` file with Terraform's ad-hoc command `terraform apply -var-file="filename.tfvars"`:

### Bonus Tip: Using .tfvars File with Terraform

Instead of directly modifying the `variables.tf` file, you can create a separate `.tfvars` file to provide variable values to Terraform. This approach allows for easier management of configuration options and promotes a cleaner separation between code and configuration.

1. Create a new `.tfvars` file, e.g., `custom-variables.tfvars`, and specify variable values in key-value pairs. For example:

   ```hcl
   aws_region = "desired region"
   vpc_cidr_block = "desired cidr block"
   public_subnet_cidr_block = "desired cidr block"
   private_subnet_cidr_block = "desired cidr block"
   key_pair_name = "your key"
   ami_id = "ami-12345678"
   instance_type = "your instance type"
   public_instance_count = desired number of instances
   private_instance_count = desired number of instances
   ```

2. When applying the Terraform configuration, specify the `.tfvars` file using the `-var-file` flag:

   ```bash
   terraform apply -var-file="custom-variables.tfvars"
   ```

   This Terraform ad-hoc command instructs Terraform to read variable values from the specified `.tfvars` file during the `apply` operation.

   Using `.tfvars` files in this manner allows for easier management of configuration options, especially when working with multiple environments or configurations.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request. Happy Coding...

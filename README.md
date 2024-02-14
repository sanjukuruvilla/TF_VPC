## README

About
This repository contains Terraform configuration files to create and manage AWS resources such as VPCs, subnets, security groups, and EC2 instances. 
It provides a flexible and scalable infrastructure setup that can be easily customized to suit various deployment requirements.

### Usage

1. Clone this repository to your local machine.
   ```bash
   git clone https://github.com/sanjukuruvilla/TF_VPC.git
   ```

2. Navigate to the directory.
   ```bash
   cd TF_VPC
   ```

3. Update the `variables.tf` file according to your desired configurations.

### Variables.tf

#### Areas to Change:

**Default Values:**
- `aws_region`: The AWS region where resources will be created.
- `vpc_cidr_block`: Class C CIDR block for VPC.
- `public_subnet_cidr_blocks`: CIDR blocks for public subnets.
- `private_subnet_cidr_blocks`: CIDR blocks for private subnets.
- `key_pair_name`: Name of the SSH key pair for EC2 instance.
- `ami_id`: AMI ID for EC2 instance.
- `instance_type`: Instance type for EC2 instance.

Replace these default values with your specific configurations before deploying.

Feel free to reach out if you have any questions or need assistance. Happy coding! 🏴‍☠️

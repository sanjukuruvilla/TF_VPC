# **DEVOPSAI **

# File: main.tf
# Description: Terraform configuration for creating AWS VPC, subnets, and instances.
# Purpose: This Terraform script provisions an AWS VPC with public and private subnets, along with EC2 instances in each subnet.

resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.public_subnet_cidr_block
  availability_zone = "us-east-1a"  # Adjust AZ as needed
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.private_subnet_cidr_block
  availability_zone = "us-east-1b"  # Adjust AZ as needed
}

resource "aws_instance" "public_instance" {
  count         = var.public_instance_count 
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = var.key_pair_name
  user_data     = var.user_data
  associate_public_ip_address = true
  lifecycle {
     create_before_destroy = true
    }
}

resource "aws_instance" "private_instance" {
  count         = var.private_instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.private_subnet.id
  key_name      = var.key_pair_name
  user_data     = var.user_data
}

##Lifecycle management
resource "aws_instance" "lf_private_instance"{
  lifecycle {
      create_before_destroy = true
    }
}

##Tagging the instances
##Tagging public instances
resource "aws_instance" "tg_public_instance" {
  count = var.public_instance_count # Define the number of public instances to create

  tags = {
    Name = "Public ${count.index + 1}"  # Set the Name tag to "Public 1" for the first private instance, "Public 2" for the second, and so on
  }
}

##Tagging private instances
resource "aws_instance" "tg_private_instance" {
  count = var.private_instance_count # Define the number of private instances to create

  tags = {
    Name = "Private ${count.index + 1}"  # Set the Name tag to "Private 1" for the first private instance, "Private 2" for the second, and so on
  }
}


##Getting the ip addresses for public and private instances
output "public_ip_addresses" {
  value = aws_instance.public_instance.*.public_ip
}

output "private_ip_addresses" {
  value = aws_instance.private_instance.*.private_ip
}

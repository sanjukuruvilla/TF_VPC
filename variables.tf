variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-east-1"  # Set default region to N. Virginia
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"  # Adjust CIDR block as needed
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "10.0.1.0/24"  # Adjust CIDR block as needed
}

variable "private_subnet_cidr_block" {
  description = "CIDR block for private subnet"
  type        = string
  default     = "10.0.2.0/24"  # Adjust CIDR block as needed
}

variable "key_pair_name" {
  description = "Name of the SSH key pair for EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2 instance"
  type        = string
}

variable "user_data" {
  description = "User data script to be executed on instance launch"
  type        = string
}

variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "your_preferred_region"
}

variable "vpc_cidr_block" {
  description = "Class C CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/24"
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.0.0/26", "10.0.0.64/26"]
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.0.128/26", "10.0.0.192/26"]
}

variable "key_pair_name" {
  description = "Name of the SSH key pair for EC2 instance"
  type        = string
  default     = "your_key_pair_name"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "your_ami_id"
}

variable "instance_type" {
  description = "Instance type for EC2 instance"
  type        = string
  default     = "your_instance_type"
}

variable "user_data" {
  description = "User data script to be executed on instance launch"
  type        = string
}

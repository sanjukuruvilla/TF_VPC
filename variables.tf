variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
}

variable "security_group_ingress_rules" {
  description = "List of ingress rules for the security group"
  type        = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default     = [{
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }]
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets"
  type        = list(string)  //using list(string for multiple subnets) or use string for single subnet
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for private subnets"
  type        = list(string)  //using list(string for multiple subnets) or use string for single subnet
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

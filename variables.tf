variable aws_region {
  description = The AWS region where resources will be created
  type        = string
  default     = your_preferred_region
}

variable vpc_cidr_block {
  description = Class C CIDR block for VPC
  type        = string
  default     = 10.0.0.024
}

variable public_subnet_cidr_blocks {
  description = CIDR blocks for public subnets
  type        = list(string)
  default     = [10.0.0.026, 10.0.0.6426]
}

variable private_subnet_cidr_blocks {
  description = CIDR blocks for private subnets
  type        = list(string)
  default     = [10.0.0.12826, 10.0.0.19226]
}

variable key_pair_name {
  description = Name of the SSH key pair for EC2 instance
  type        = string
  default     = your_key_pair_name
}

variable ami_id {
  description = AMI ID for EC2 instance
  type        = string
  default     = your_ami_id
}

variable instance_type {
  description = Instance type for EC2 instance
  type        = string
  default     = t2.micro
}

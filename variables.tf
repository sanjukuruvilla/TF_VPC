# **DEVOPSAI **

# File: variables.tf
# Description: Terraform variable definitions.
# Purpose: Defines variables used in the main Terraform configuration file to customize the AWS infrastructure.

variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for public subnet"
  type        = string
}

variable "private_subnet_cidr_block" {
  description = "CIDR block for private subnet"
  type        = string
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

variable "public_instance_count" {
  description = "Mention the desired number of public instances"
  type        = number
}

variable "private_instance_count" {
  description = "Mention the desired number of private instances"
  type        = number
}

# This root-level variable is not needed unless you wish to override other modules.
variable "region_name" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-east-2"  # CHANGE: Update to desired region
}
variable "workspace" {
  description = "The Terraform workspace"
  type        = string
  default     = "Terraform-project"  # CHANGE: Change if you want a different workspace name
}

# EC2 instance settings
variable "instance_name_prefix" {
  description = "EC2 instance name label"
  type        = string
  default     = "my-ec2"  # CHANGE: Change the prefix for EC2 instance name
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"  # CHANGE: Change to the desired instance type
}

# VPC block and subnet details
variable "vpc_name" {
  description = "VPC block for the VPC in CIDR notation"
  type        = string
  default     = "my-vpc"  # CHANGE: Change to desired VPC name
}

variable "cidr_block" {
  description = "IP Block for the VPC in IPv4 CIDR notation"
  type        = string
  default     = "10.0.0.0/16"  # CHANGE: Adjust the CIDR block as necessary
}

variable "subnet_name" {
  description = "Subnet name label"
  type        = string
  default     = "my-subnet"  # CHANGE: Change to desired subnet name
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"  # CHANGE: Adjust the subnet CIDR block as necessary
}

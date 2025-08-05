terraform {
  required_version = ">= 1.12.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"  # Change to your region
}

resource "null_resource" "test" {}

# Define the VPC
module "vpc" {
  source = "./modules/vpc"  # Path to VPC module
  name   = "my_vpc"

  cidr_block = "10.0.0.0/16"  # Adjust CIDR block as necessary
}

# resource "aws_instance" "my_ec2" {
#   ami           = "ami-0abcdef1234567890"  # Replace with a valid AMI ID
#   instance_type = "t2.micro"
#   subnet_id = module.vpc.public_subnet_id
#   vpc_security_group_ids = [module.vpc.security_group_id]
#   tags = {
#     Name = "${var.organization_name}-${var.workspace}-EC2Instance"
#   }
# }

# Output the instance ID
output "instance_id" {
  value = aws_instance.my_ec2.id
}

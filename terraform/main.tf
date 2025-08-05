terraform {
  required_version = ">= 1.12.2"
}

provider "aws" {
  region = "us-east-2"  # Your specified region
}

resource "null_resource" "example" {}

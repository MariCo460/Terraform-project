output "aws_region" {
  description = "The AWS region where resources will be created"
  value       = var.aws_region  # Correctly referencing the variable
}

output "welcome_message" {
  description = "A welcome message for the user"
  value       = "Welcome to your Terraform project!"
}

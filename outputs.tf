# Output the AWS region being used
output "aws_region" {
  description = "The AWS region where resources will be created"
  value       = us-east-2
}

# Static output message
output "welcome_message" {
  description = "A welcome message for the user"
  value       = "Welcome to your Terraform project!"
}

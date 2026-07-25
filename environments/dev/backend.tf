terraform {
  backend "s3" {
    bucket         = "your-company-terraform-state-bucket" # Create this bucket once in AWS manually
    key            = "environments/dev/terraform.tfstate"   # Path inside the bucket
    region         = "us-east-1"
    encrypt        = true                                   # Encrypts state at rest
  }
}
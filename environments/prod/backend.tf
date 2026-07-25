terraform {
  backend "s3" {
    bucket         = "your-company-terraform-state-bucket"
    key            = "environments/prod/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
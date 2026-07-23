terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Deploy Dev Bucket
module "dev_bucket" {
  source      = "./modules/s3"
  bucket_name = "${var.bucket_prefix}-dev-2026"
  tags = {
    Environment = "dev"
  }
}

# Root Outputs
output "dev_bucket_name" {
  value = module.dev_bucket.id
}

output "dev_bucket_arn" {
  value = module.dev_bucket.arn
}

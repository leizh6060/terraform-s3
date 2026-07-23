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

module "s3_bucket" {
  # Points up two levels to the shared module directory
  source      = "../../modules/s3"
  bucket_name = "${var.bucket_prefix}-${var.environment}-2026"
  tags = {
    Environment = var.environment
  }
}

output "bucket_name" {
  value = module.s3_bucket.id
}

output "bucket_arn" {
  value = module.s3_bucket.arn
}

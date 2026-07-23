variable "aws_region" {
  type        = string
  description = "Target AWS Region"
}

variable "bucket_prefix" {
  type        = string
  description = "Prefix for the unique bucket name"
}

variable "environment" {
  type        = string
  description = "Deployment environment name (dev, stage, prod)"
}

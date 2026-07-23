variable "bucket_name" {
  description = "The globally unique name of the S3 bucket"
  type        = string
}

variable "tags" {
  description = "Additional tags to apply to the bucket"
  type        = map(string)
  default     = {}
}

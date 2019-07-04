# BUCKET_S3
variable "bucket_name" {}

variable "region" {
  default = "us-east-1"
}

variable "acl" {
  default = "public-read-write"
}

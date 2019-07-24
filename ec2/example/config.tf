provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-bkt"
    region  = "us-east-1"
    key     = "ec2"
  }
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket  = "wakanda-tf-states"
    region  = "us-east-1"
    key     = "dynamodb"
  }
}

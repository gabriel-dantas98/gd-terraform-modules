provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket  = "wakanda-tf-states"
    key     = "poc/api-gateway-module.tfstate"
    region  = "us-east-1"
  }
}

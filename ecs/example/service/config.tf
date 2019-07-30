provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-ecs-bucket"
    region  = "us-east-1"
    key     = "folder/service.tfstate"
  }
}

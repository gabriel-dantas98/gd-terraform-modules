provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-bucket"
    region  = "us-east-1"
    key     = "folder-bkt/cluster.tfstate"
  }
}

terraform {
  required_version = "> 0.12.0"
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    encrypt = true
    bucket = "main_vpc"
    region  = "us-east-1"
    key     = "network/main_vpc.tfstate"
  }
}

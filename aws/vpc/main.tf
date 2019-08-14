resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  assign_generated_ipv6_cidr_block = var.assign_generated_ipv6_cidr_block

  tags = {
    Name = var.vpc_name
  }
}

module "public_subnet" {
  source = "./subnet/public"

  count = length(var.public_subnet_cidrs) > 0 ? length(var.public_subnet_cidrs) : 0 

  vpc_name                  = var.vpc_name
  vpc_id                    = aws_vpc.main.id

  subnets_cidrs             = var.public_subnet_cidrs
  subnet_availability_zones = var.availability_zones
  map_ip_on_launch          = var.map_public_ip_on_launch
}

module "private_subnet" {
  source = "./subnet/private"

  count = length(var.private_subnet_cidrs) > 0 ? length(var.private_subnet_cidrs) : 0

  vpc_name                  = var.vpc_name
  vpc_id                    = aws_vpc.main.id
  
  subnets_cidrs             = var.private_subnet_cidrs
  subnet_availability_zones = var.availability_zones
  map_ip_on_launch          = var.map_private_ip_on_launch
}

module "database_subnet" {
  source = "./subnet/private"

  count = length(var.database_subnet_cidrs) > 0 ? length(var.database_subnet_cidrs) : 0

  vpc_name                  = var.vpc_name
  vpc_id                    = aws_vpc.main.id
  
  subnets_cidrs             = var.database_subnet_cidrs
  subnet_availability_zones = var.availability_zones
  map_ip_on_launch          = var.map_private_ip_on_launch
}

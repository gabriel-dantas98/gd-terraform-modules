# VPC Variables
variable "vpc_name" {}

variable "vpc_cidr" {}

variable "availability_zones" {}

variable "instance_tenancy" {
  default = "default"
}

variable "enable_dns_support" {
  default = true
}

variable "enable_dns_hostnames" {
  default = true
}

# SUBNETS VARIABLEs
variable "network_bits" {
  default = 8
}

variable "map_public_ip_on_launch" {
  default = true
}

variable "map_private_ip_on_launch" {
  default = false
}

variable "assign_generated_ipv6_cidr_block" {
  default = false
}
variable "public_subnet_cidrs" {}

variable "private_subnet_cidrs" {}

variable "database_subnet_cidrs" {}

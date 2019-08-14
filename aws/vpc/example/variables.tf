
# VPC Variables
variable "vpc_name" {
    default = "example_vpc"
}

variable "vpc_cidr" {
    default = "10.1.0.0/16"
}

# SUBNETS VARIABLEs
variable "public_subnet_cidrs" {
    default = ["10.6.1.0/24","10.6.2.0/24"]
}

variable "private_subnet_cidrs" {
    default = ["10.6.3.0/24","10.6.4.0/24"]
}

variable "database_subnet_cidrs" {
    default = ["10.6.5.0/24","10.6.6.0/24"]
}

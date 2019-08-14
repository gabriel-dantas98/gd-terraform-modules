variable "vpc_name" {}
variable "vpc_id" {}

variable "route_cidr" {
  default = "0.0.0.0/0"
}
variable "subnets_cidrs" {}

variable "subnet_availability_zones" {}

variable "map_ip_on_launch" {}

variable "ingress_ports" {
  type        = map(string)
  description = "List of the ingress ports and cidr_blocks"
}

variable "vpc_id" {
  default = ""
}

variable "name" {}

variable "description" {
    default = "TF-SG"
}

variable "protocol" {
    default = "tcp"
}




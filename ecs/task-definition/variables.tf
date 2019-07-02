variable "family" {}
variable "container_definitions" {}
variable "network_mode" {}
variable "requires_compatibilities" {}
variable "cpu" {}
variable "memory" {}

variable "execution_role_arn" {
  default = ""
}

variable "cloudwatch_group_logs" {}

variable "target_group_name" {
 description = "[REQUIRED] - The target group name."
}

variable "target_group_port" {
  description = "[REQUIRED] - The target group port."
}

variable "target_group_protocol" {
  default = "HTTP"
  description = "[OPTIONAL] - The protocol to use for routing traffic to the targets"
}

variable "target_group_type" {
  description = "[REQUIRED] - The type of target that you must specify when registering targets with this target group."
}

variable "target_group_vpc_id" {
  default = ""
  description = "[OPTIONAL] - The identifier of the VPC in which to create the target group."
}

variable "target_group_tags" {
  default = {}
  description = "[OPTIONAL] - A mapping of tags to assign to the target group."
}

variable "health_check_enabled" {
  description = "[REQUIRED] -"
}
variable "health_check_healthy_threshold" {
  description = "[REQUIRED] -"
}
variable "health_check_unhealthy_threshold" {
  description = "[REQUIRED] -"
}

variable "health_check_timeout" {
  description = "[REQUIRED] -"
}
variable "health_check_interval" {
  description = "[REQUIRED] -"
}
variable "health_check_path" {
  description = "[REQUIRED] -"
}
variable "health_check_port" {
  description = "[REQUIRED] -"
}

variable "health_check_matcher" {
  description = "[REQUIRED] -"
}
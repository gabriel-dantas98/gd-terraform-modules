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
  description = "[REQUIRED] - Indicates whether health checks are enabled."
}
variable "health_check_healthy_threshold" {
  description = "[REQUIRED] - The number of consecutive health checks successes required."
}
variable "health_check_unhealthy_threshold" {
  description = "[REQUIRED] -  The number of consecutive health check failures required."
}

variable "health_check_timeout" {
  description = "[REQUIRED] - The amount of time, in seconds, during which no response means a failed health check."
}
variable "health_check_interval" {
  description = "[REQUIRED] - The approximate amount of time, in seconds, between health checks of an individual target."
}
variable "health_check_path" {
  description = "[REQUIRED] - The destination for the health check request."
}
variable "health_check_port" {
  description = "[REQUIRED] - The port to use to connect with the target."
}

variable "health_check_matcher" {
  description = "[REQUIRED] - The HTTP codes to use when checking for a successful response from a target."
}
variable "target_id" {
  description = "[REQUIRED] - The ID of the target."
}

variable "instance_port" {
  default = ""
  description = "[OPTIONAL] - The instance port when target group type is instance."
}


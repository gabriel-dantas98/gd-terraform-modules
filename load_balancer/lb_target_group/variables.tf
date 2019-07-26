variable "target_group_name" {
 description = "[REQUIRED] - The target group name."
}

variable "target_group_port" {
  description = "[REQUIRED] - The target group port."
}

variable "target_group_protocol" {
  description = "[OPTIONAL] - "
}

variable "target_group_type" {
  description = ""
  
}

variable "target_group_vpc_id" {
  description = ""
}

variable "target_group_tags" {
  description = ""
}

variable "health_check_enabled" {
  description = ""
}
variable "health_check_healthy_threshold" {
  description = ""
}
variable "health_check_unhealthy_threshold" {
  description = ""
}

variable "health_check_timeout" {
  description = ""
}
variable "health_check_interval" {
  description = ""
}
variable "health_check_path" {
  description = ""
}
variable "health_check_port" {
  description = ""
}

variable "health_check_matcher" {
  description = ""
}
variable "lb_arn" {
    description = "[REQUIRED] - Load balancer ARN."
}

variable "lb_listener_port" {
    description = "[REQUIRED] - Listener Port."
}

variable "target_group_arn" {
  description = "[REQUIRED] - Target group ARN to forward."
}

variable "lb_listener_protocol" {
    default = "HTTP"
    description = "[OPTIONAL] - Listener Protocol."
}

variable "ssl_policy" {
  default = ""
  description = "[OPTIONAL] - The name of the SSL Policy for the listener." 
}

variable "certificate_arn" {
  default = ""
  description = "[OPTIONAL] - The ARN of the default SSL server certificate."
}



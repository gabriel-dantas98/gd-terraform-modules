variable "lb_arn" {
    description = "[REQUIRED] - Load balancer ARN."
}

variable "lb_listener_port" {
    description = "[REQUIRED] - Listener Port."
}

variable "lb_listener_protocol" {
    default = "HTTP"
    description = "[OPTIONAL] - Listener Protocol."
}

variable "redirect_port" {
  description = "[OPTIONAL] - The port redirect."
}

variable "redirect_protocol" {
  description = "[OPTIONAL] - The protocol redirect."
}

variable "redirect_status_code" {
  description = "[REQUIRED] - The HTTP redirect code." //HTTP_301, HTTP_302
}
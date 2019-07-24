variable "lb_arn" {
    description = "[REQUIRED] - Load balancer ARN."
}

variable "lb_listener_port" {
    description = "[REQUIRED] - Listener Port."
}

variable "target_group_arn" {
  description = "[REQUIRED] - Target group ARN to forward."
}

variable "response_status_code" {
  description = "[REQUIRED] - The HTTP response code."
}

variable "lb_listener_protocol" {
    default = "HTTP"
    description = "[OPTIONAL] - Listener Protocol."
}

variable "response_content_type" {
  description = "[REQUIRED] - The response content type."
}

variable "response_message_body" {
  default = ""
  description = "[OPTIONAL] - The response message content body."
}

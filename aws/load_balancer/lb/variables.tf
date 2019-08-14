variable "lb_name" {
  description = "[REQUIRED] - Load Balancer name"
}

variable "internal" {
  default     = false
  description = "[OPTIONAL] - Flag set Load balancer is internal or not."
}

variable "lb_type" {
  description = "[REQUIRED] - Load balancer type (application or network)."
}

variable "security_groups_ids" {
  description = "[REQUIRED] - List of security groups ids."
}

variable "subnets_ids" {
  description = "[REQUIRED] - List of subnets ids."
}

variable "enable_deletion_protection" {
  default     = true
  description = "[OPTIONAL] - Flag set Load balancer have deletion protection."
}

variable "lb_tags" {
  type        = map(string)
  default     = {}
  description = "[OPTIONAL] - Map with tags to attache in Load balancer."
}

variable "lb_bucket_logs_enable" {
  default     = true
  description = "[OPTIONAL] - Flag set access log load balancer is enable."
}



variable "asg_name" {
  description = "[REQUIRED] - The Auto scaling name."
}
variable "lc_name" {
   description = "[REQUIRED] - The name of the launch configuration to use."
}

variable "desired_capacity" {
  description = "[REQUIRED] - The number of Amazon EC2 instances that should be running in the group."
}

variable "max_size" {
  description = "[REQUIRED] - The maximum size of the autoscale group."
}

variable "min_size" {
  description = "[REQUIRED] - The minimum size of the autoscale group."
}

variable "availability_zones" {
  description = "[REQUIRED] - The availability zones of the autoscale group."
}

variable "target_group_arns" {
  description = "[REQUIRED] - The availability zones of the autoscale group."
}

variable "health_check_type" {
  description = "[REQUIRED] - EC2 or ELB. Controls how health checking is done."
}

variable "health_check_grace_period" {
  description = "[REQUIRED] - Time after instance comes into service before checking health."
}
variable "tags" {
  default = {}
  description = "[OPTIONAL] - The availability zones of the autoscale group."
}
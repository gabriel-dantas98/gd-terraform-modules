variable "lauch_configuration_name" {
  description = "[REQUIRED] - The name of the Launch configuration."
}

variable "image_id" {
  description = "[REQUIRED] - The EC2 image ID to launch."
}

variable "instance_type" {
  description = "[REQUIRED] - The size of instance to launch."
}

variable "iam_instance_profile" {
  default     = ""
  description = "[OPTIONAL] - The name attribute of the IAM instance profile to associate with launched instances."
}
variable "key_pair" {
  description = "[REQUIRED] - The key name that should be used for the instance."
}
variable "security_groups_ids" {
  description = "[REQUIRED] - A list of associated security group IDS."
}
variable "user_data" {
  default     = ""
  description = "[OPTIONAL] - The user data to provide when launching the instance."
}
variable "enable_monitoring" {
  default     = true
  description = "[OPTIONAL] - Enables/disables detailed monitoring."
}

variable "ebs_volume_type" {
  default     = "gp2"
  description = "[OPTIONAL] - EBS Volume type to attached in instance."
}

variable "ebs_volume_size" {
  default     = 8
  description = "[OPTIONAL] - EBS Volume size."
}

variable "ebs_delete_on_termination" {
  default     = true
  description = "[OPTIONAL] - Delete EBS on termination True or False."
}
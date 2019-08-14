
variable "instance_name" {
  description = "[REQUIRED] - Instance name using in Tag Name."
}

variable "instance_count" {
  description = "[OPTIONAL] - Number instances to provisioning."
}

variable "instance_type" {
  description = "[REQUIRED] - Instance family size."
}

variable "instance_role" {
  description = "[OPTIONAL] - Role attached to instance."
}

variable "ami_id" {
  description = "[REQUIRED] - AMI ID using to provisioning instance."
}

variable "key_pair" {
  description = "[REQUIRED] - Keypair name using to access."
}

variable "security_group_ids" {
  description = "[REQUIRED] - List of security groups ids to attached instance."
}

variable "subnet_id" {
  description = "[REQUIRED] - Subnet ID to instance is provisioned."
}

variable "user_data" {
  description = "[OPTIONAL] - User data using to execute in instance."
}

variable "ebs_volume_type" {
  description = "[OPTIONAL] - EBS Volume type to attached in instance."
}

variable "ebs_volume_size" {
  description = "[OPTIONAL] - EBS Volume size."
}

variable "ebs_delete_on_termination" {
  description = "[OPTIONAL] - Delete EBS on termination True or False."
}

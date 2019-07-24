
variable "instance_tags" {
  type = map(string)
  default = {}
  description = "[OPTINAL] -  Map tags with instance using."
}

variable "instance_name" {
  description = "[REQUIRED] - Instance name using in Tag Name."
}

variable "instance_type" {
  description = "[REQUIRED] - Instance family size."
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

variable "instance_count" {
  default = 1
  description = "[OPTIONAL] - Number instances to provisioning."
}

variable "instance_role" {
  default = ""
  description = "[OPTIONAL] - Role attached to instance."
}

variable "ebs_volume_type" {
  default = "gp2"
  description = "[OPTIONAL] - EBS Volume type to attached in instance."
}

variable "ebs_volume_size" {
  default = 8
  description = "[OPTIONAL] - EBS Volume size."
}

variable "user_data" {
  default = ""
  description = "[OPTIONAL] - User data using to execute in instance."
}

variable "ebs_delete_on_termination" {
  default = true
  description = "[OPTIONAL] - Delete EBS on termination True or False."
}
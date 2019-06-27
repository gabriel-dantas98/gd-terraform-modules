variable "instance_ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "name" {}
variable "subnet_id" {
  default = ""
}
variable "security_group_ids" {}

variable "instance_count" {
  default = 1
}
variable "ebs_volume_size" {
  default = 20
}
variable "ebs_volume_type" {
  default = "gp2"
}
variable "ebs_delete_on_termination" {
  default = true
}
variable "user_data" {
  default = ""
}
variable "instance_profile" {
  default = ""
}
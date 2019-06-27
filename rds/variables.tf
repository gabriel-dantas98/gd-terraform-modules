########################
# VARIABLES RDS MODULE #
########################
variable "publicly_accessible" {
  default = false
}

variable "multi_az" {
  default = false
}

variable "security_group_ids" {
  default = []
}

variable "subnet_group_names" {
  default = ""
}

variable "storage_type" {}

variable "identifier" {}

variable "db_name" {}

variable "allocated_storage" {}

variable "db_username" {}

variable "db_password" {}

variable "instance_class" {}

variable "engine" {}

variable "engine_version" {}

variable "skip_final_snapshot" {
  default = false
}

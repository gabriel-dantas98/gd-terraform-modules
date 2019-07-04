variable "target_group_name" {
  description = "Nome que será atribuido ao target group"
  default     = ""
}

variable "target_group_port" {
  description = "Porta que deve ser acessada"
  default     = 80
}

variable "target_group_type" {
  description = "Tipo do target group"
}

variable "target_group_path" {
  description = "Path de onde será o healthcheck"
  default     = "/"
}

variable "target_group_vpc_id" {}

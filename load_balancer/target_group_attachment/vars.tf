variable "target_instances" {
  default = 1
}

variable "target_group_arn" {
  description = "ARN gerado do targer_group"
}

variable "instance_id" {
  description = "ID da instância que será adicionada ao target group"
  type        = "list"
}

variable "instance_port" {
  description = "Porta onde a aplicação está escutando"
}

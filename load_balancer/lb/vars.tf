variable "lb_name" {
  description = "Nome do Balanceador"
}

variable "internal" {
  description = "Identificador de balanceador interno"
  default     = false
}

variable "lb_type" {
  description = "Tipo do balanceador"
}

variable "lb_sg_id" {
  description = "Security groups atrelados ao Balanceador"
  default     = ""
}

variable "lb_logs_bucket" {
  description = "Bucket para logs de acesso"
  default     = ""
}

variable "logs_enabled" {
  description = "Identificador para habilitar os logs"
  default     = true
}

variable "subnets" {
  default = ["subnet-01546c1dfaca01147", "subnet-032f0735ea9bbb2fe"]
}

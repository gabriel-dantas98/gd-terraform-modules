# LAMBDA
variable "bucket_name" {}

variable "bucket_key" {}

variable "function_name" {}

variable "runtime" {}

variable "handler" {
  default = "main.lambda_handler"
}

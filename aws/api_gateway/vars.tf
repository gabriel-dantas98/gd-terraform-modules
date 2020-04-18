# API GATEWAY
variable "api_name" {}

variable "description" {
  default = "This is my API for demonstration purposes"
}

# variable "region" {}

# variable "account_id" {}

# variable "lambda_arn" {}

# variable "path" {}

# variable "http_verb" {}

variable "endpoint_configuration_types" {
  default = []
  description = "Regional, Edge optimized, Private"
}

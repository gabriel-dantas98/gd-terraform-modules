variable "table_name" {
  description = "The name of the table, this needs to be unique within a region."
}

variable "billing_mode" {
  description = "Controls how you are charged for read and write throughput and how you manage capacity."
  default     = "PAY_PER_REQUEST"
  # Can be PROVISIONED or PAY_PER_REQUEST  
}

variable "read_capacity" {
  description = "The number of read units for this table. If the billing_mode is PROVISIONED, this field is required."
  default     = 0
}

variable "write_capacity" {
  description = "The number of write units for this table. If the billing_mode is PROVISIONED, this field is required."
  default     = 0
}

variable "hash_key" {
  description = "The attribute to use as the hash (partition) key."
}

variable "range_key" {
  description = "The attribute to use as the range (sort) key."
}

variable "table_columns" {
  type        = map
  description = "List maps with table columns name and types."
}

variable "table_tags" {
  description = "Tags to attach to table."
  default     = {}
}

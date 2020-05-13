provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_dynamodb_table" "dynamodb-table" {
  name           = var.table_name
  billing_mode   = var.billing_mode
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.hash_key
  range_key      = var.range_key

  dynamic "attribute" {
    for_each = var.table_columns

    name = var.table_columns.value.name
    type = var.table_columns.value.type
  }
  dynamic "ttl" {
    for_each       = var.table_columns
    attribute_name = var.table_columns.value.name
    enabled        = var.table_columns.value.has_ttl
  }

  tags = merge(var.table_tags, map("Name", var.table_name, "Terraformed", "true"))
}
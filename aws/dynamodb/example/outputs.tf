
output "id" {
  value       = module.dynamodb_table.id
  description = "The table ID."
}

output "arn" {
  value       = module.dynamodb_table.arn
  description = "The ARN of the table."
}
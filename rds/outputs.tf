######################
# RDS MODULE OUTPUTS #
######################

output "id" {
  value = aws_db_instance.db.id
  description = "The RDS instance ID."
}

output "address" {
  value = aws_db_instance.db.address
  description = "The hostname of the RDS instance. See also endpoint and port."
}

output "arn" {
  value = aws_db_instance.db.arn
  description = "The ARN of the RDS instance."
}

output "storage" {
  value = aws_db_instance.db.allocated_storage
  description = "The amount of allocated storage."
}

output "availability_zone" {
  value = aws_db_instance.db.availability_zone
  description = "The availability zone of the instance."
}

output "endpoint" {
  value = aws_db_instance.db.endpoint
  description = "The connection endpoint in address:port format."
}
output "engine" {
  value = aws_db_instance.db.engine
  description = "The database engine."
}

output "engine_version" {
  value = aws_db_instance.db.engine_version
  description = "The database engine version."
}

output "hosted_zone_id" {
  value = aws_db_instance.db.hosted_zone_id
  description = " The canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)."
}

output "instance_class" {
  value = aws_db_instance.db.instance_class
  description = "The RDS instance class."
}

output "multi_az" {
  value = aws_db_instance.db.multi_az
  description = " If the RDS instance is multi AZ enabled."
}
output "database_name" {
  value = aws_db_instance.db.name
  description = "The database name."
}

output "database_port" {
  value = aws_db_instance.db.port
  description = "The database port."
}
output "resource_id" {
  value = aws_db_instance.db.resource_id
  description = "The RDS Resource ID of this instance."
}

output "status" {
  value = aws_db_instance.db.status
  description = "The RDS instance status."
}

output "username" {
  value = aws_db_instance.db.username
  description = "The master username for the database."
}
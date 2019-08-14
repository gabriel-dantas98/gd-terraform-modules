##############
# RDS MODULE #
##############
resource "aws_db_instance" "db" {
  identifier = var.identifier
  name       = var.db_name
  username   = var.db_username
  password   = var.db_password
  allocated_storage = var.allocated_storage
  storage_type      = var.storage_type
  instance_class      = var.instance_class
  engine              = var.engine
  engine_version      = var.engine_version
  final_snapshot_identifier = "final-${random_string.identifier.result}-snapshot-${var.identifier}"
  skip_final_snapshot = var.skip_final_snapshot
  multi_az            = var.multi_az
  publicly_accessible = var.publicly_accessible
  vpc_security_group_ids = list(var.security_group_ids)
  db_subnet_group_name = var.subnet_group_names
}

resource "random_string" "identifier" {
  length = 5
  special = true
  override_special = "/@\" "
}

resource "aws_instance" "instance" {

  count                  = var.instance_count > 1 ? var.instance_count : 1 
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_pair
  vpc_security_group_ids = list(var.security_group_ids)
  subnet_id              = var.subnet_id
  iam_instance_profile   = var.instance_role
  user_data              = var.user_data

  root_block_device {
    volume_type = var.ebs_volume_type
    volume_size = var.ebs_volume_size
    delete_on_termination = var.ebs_delete_on_termination
  }

  tags = merge(var.instance_tags, map("Name", var.instance_name, "Terraformed", "true"))
}

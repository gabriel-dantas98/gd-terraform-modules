resource "aws_instance" "instance" {
  #count                  = var.instance_count > 1 ? var.instance_count : 1 
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = list(var.security_group_ids)
  subnet_id              = var.subnet_id
  iam_instance_profile   = var.instance_profile
  user_data              = var.user_data

  root_block_device {
    volume_type = var.ebs_volume_type
    volume_size = var.ebs_volume_size
    delete_on_termination = var.ebs_delete_on_termination
  }

  tags = {
    Name        = "${var.name}-${var.instance_count}"
    Terraform   = "true"
  }
}

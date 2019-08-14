provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}

resource "aws_launch_configuration" "launch_configuration" {
  name                 = var.lauch_configuration_name
  image_id             = var.image_id
  instance_type        = var.instance_type
  iam_instance_profile = var.iam_instance_profile
  key_name             = var.key_pair
  security_groups      = var.security_groups_ids
  user_data            = var.user_data
  enable_monitoring    = var.enable_monitoring

  root_block_device {
    volume_type           = var.ebs_volume_type
    volume_size           = var.ebs_volume_size
    delete_on_termination = var.ebs_delete_on_termination
  }

  lifecycle {
    create_before_destroy = true
  }
}

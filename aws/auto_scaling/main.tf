resource "aws_autoscaling_group" "autoscaling_group" {
  name               = var.autoscaling_group_name
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size

  availability_zones = var.availability_zones

  target_group_arns = var.target_group_arns
  launch_configuration = var.launch_configuration_name

  health_check_type         = var.health_check_type
  health_check_grace_period = var.health_check_grace_period

   
  tags = merge(var.autoscaling_group_tags, map("Terraformed", "true")) 
}
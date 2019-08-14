provider "aws" {
  region = "us-east-1"
}

resource "aws_lb_target_group" "lb_target_group" {
  name        = var.target_group_name
  port        = var.target_group_port
  protocol    = var.target_group_protocol
  target_type = var.target_group_type
  vpc_id      = var.target_group_vpc_id

  health_check {
    enabled             = var.health_check_enabled
    healthy_threshold   = var.health_check_healthy_threshold
    unhealthy_threshold = var.health_check_unhealthy_threshold
    timeout             = var.health_check_timeout
    interval            = var.health_check_interval
    path                = var.health_check_path
    port                = var.health_check_port
    matcher             = var.health_check_matcher
  }

  tags = merge(var.target_group_tags, map("Name", var.target_group_name, "Terraformed", "true"))
}

resource "aws_lb_target_group_attachment" "target_group_instance_attachment" {
  count = var.target_group_type == "instance" ? 0 : 1 //Caso seja um target group para ec2

  target_group_arn = aws_lb_target_group.lb_target_group.arn
  target_id        = var.target_id 
  port             = var.instance_port
}


resource "aws_lb_target_group_attachment" "target_group_attachment" {
  count = var.target_group_type != "instance" ? 0 : 1 //Caso seja um target group para lambda ou ip

  target_group_arn = aws_lb_target_group.lb_target_group.arn
  target_id        = var.target_id 
}

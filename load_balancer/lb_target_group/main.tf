resource "aws_lb_target_group" "lb_target_group" {
  name        = "${var.target_group_name}"
  port        = "${var.target_group_port}"
  protocol    = "HTTP"
  target_type = "${var.target_group_type}"
  vpc_id      = "${var.target_group_vpc_id}"

  tags {
    name = "${var.target_group_name}"
  }

  health_check {
    healthy_threshold   = 3
    unhealthy_threshold = 10
    timeout             = 5
    interval            = 10
    path                = "${var.target_group_path}"
    port                = "${var.target_group_port}"
    matcher             = 200
  }
}

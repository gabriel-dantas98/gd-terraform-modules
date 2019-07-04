resource "aws_lb_listener" "lb_listener" {
  load_balancer_arn = "${var.lb_arn}"
  port              = "${var.lb_listener_port}"
  protocol          = "${var.lb_listener_protocol}"

  default_action {
    target_group_arn = "${var.target_group_arn}"
    type             = "forward"
  }
}

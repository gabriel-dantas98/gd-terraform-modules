resource "aws_lb_target_group_attachment" "target_group_attachment" {
  count = "${var.target_instances}"

  target_group_arn = "${var.target_group_arn}"
  target_id        = "${element(var.instance_id, count.index)}"
  port             = "${var.instance_port}"
}

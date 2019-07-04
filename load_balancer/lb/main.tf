resource "aws_lb" "lb" {
  name               = "${var.lb_name}"
  internal           = "${var.internal}"
  load_balancer_type = "${var.lb_type}"
  security_groups    = ["${var.lb_sg_id}"]
  subnets            = ["${var.subnets}"]

  access_logs {
    bucket  = "${var.lb_logs_bucket}"
    prefix  = "log-${var.lb_name}"
    enabled = "${var.logs_enabled}"
  }
}

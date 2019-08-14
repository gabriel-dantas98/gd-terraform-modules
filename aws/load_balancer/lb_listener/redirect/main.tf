resource "aws_lb_listener" "lb_listener" {
  load_balancer_arn = var.lb_arn
  port              = var.lb_listener_port
  protocol          = var.lb_listener_protocol

  default_action {
    type             = "redirect"

    redirect {
      port        = var.redirect_port 
      protocol    = var.redirect_protocol
      status_code = var.redirect_status_code 
    }
  }
}

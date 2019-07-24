resource "aws_lb_listener" "lb_listener" {
  load_balancer_arn = var.lb_arn
  port              = var.lb_listener_port
  protocol          = var.lb_listener_protocol

  default_action {
    type             = "fixed-response"

    fixed_response {
      content_type = var.response_content_type 
      message_body = var.response_message_body 
      status_code  = var.response_status_code  
    }
  }
}

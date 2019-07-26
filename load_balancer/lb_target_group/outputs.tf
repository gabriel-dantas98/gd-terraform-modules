output "name" {
  value = aws_lb_target_group.lb_target_group.name
  description = "The name of the Target Group."
}

output "id" {
  value = aws_lb_target_group.lb_target_group.id
  description = "The ID of the Target Group."
}

output "arn_suffix" {
  value = aws_lb_target_group.lb_target_group.arn_suffix
  description = "The ARN suffix for use with CloudWatch Metrics."
}

output "arn" {
  value = aws_lb_target_group.lb_target_group.arn
  description = "The ARN of the Target Group."
}

output "name" {
  value       = var.lb_name
  description = "The name of the load balancer."
}

output "id" {
  value       = aws_lb.lb.id
  description = "The ARN of the load balancer."
}

output "arn" {
  value       = aws_lb.lb.arn
  description = "The ARN of the load balancer."
}

output "dns_name" {
  value       = aws_lb.lb.dns_name
  description = "The DNS name of the load balancer."
}

output "arn_suffix" {
  value       = aws_lb.lb.arn_suffix
  description = "The ARN suffix for use with CloudWatch Metrics."
}

output "zone_id" {
  value       = aws_lb.lb.zone_id
  description = "The canonical hosted zone ID of the load balancer."
}

output "bucket_logs_name" {
  value       = local.bucket_logs_name
  description = "The name of the bucket access logs."
}

output "bucket_logs_domain_name" {
  value       = aws_s3_bucket.lb_bucket_logs.bucket_domain_name
  description = "The bucket domain name."
}


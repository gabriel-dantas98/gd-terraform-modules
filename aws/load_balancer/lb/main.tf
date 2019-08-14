provider "aws" {
  region = "us-east-1"
}

locals {
  bucket_logs_name = "bucket_log_${var.lb_name}"
}

resource "aws_lb" "lb" {
  name               = var.lb_name
  internal           = var.internal
  load_balancer_type = var.lb_type
  security_groups    = var.security_groups_ids
  subnets            = var.subnets_ids

  enable_deletion_protection = var.enable_deletion_protection

  access_logs {
    bucket  = local.bucket_logs_name
    enabled = var.lb_bucket_logs_enable
  }

  tags = merge(var.lb_tags, map("Name", var.lb_name, "Terraformed", "true", "BucketLogs", local.bucket_logs_name))

  depends_on = [aws_s3_bucket.lb_bucket_logs]
}

resource "aws_s3_bucket" "lb_bucket_logs" {
  bucket = local.bucket_logs_name
  acl    = "private"

  tags = merge(var.lb_tags, map("BucketLoadBalancerLogs", var.lb_name, "Terraformed", "true"))
}

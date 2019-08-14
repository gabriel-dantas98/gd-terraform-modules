output "arn" {
  value = "${aws_ecs_task_definition.tf.arn}"
}

output "version" {
  value = "${aws_ecs_task_definition.tf.revision}"
}

output "family" {
  value = "${aws_ecs_task_definition.tf.family}"
}

output "cw_group_log_arn" {
  value = "${aws_cloudwatch_log_group.cw_group_log.arn}"
}

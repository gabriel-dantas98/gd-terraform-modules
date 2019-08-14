resource "aws_ecs_task_definition" "tf" {
  family                   = "${var.family}"
  container_definitions    = "${var.container_definitions}"
  network_mode             = "${var.network_mode}"
  requires_compatibilities = ["${var.requires_compatibilities}"]
  cpu                      = "${var.cpu}"
  memory                   = "${var.memory}"
  execution_role_arn       = "${var.execution_role_arn}"
}

resource "aws_cloudwatch_log_group" "cw_group_log" {
  name = "${var.cloudwatch_group_logs}"
}

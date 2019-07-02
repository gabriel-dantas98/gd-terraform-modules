resource "aws_ecs_service" "service" {
  name            = "${var.ecs_service_name}"
  cluster         = "${var.cluster_id}"
  task_definition = "${var.task_definition}"
  desired_count   = "${var.desired_count}"
  launch_type     = "${var.launch_type}"

  load_balancer {
    target_group_arn = "${var.target_group_arn}"
    container_name   = "${var.container_name}"
    container_port   = "${var.container_port}"
  }

  network_configuration {
    subnets          = "${var.subnets}"
    security_groups  = "${var.security_groups}"
    assign_public_ip = "${var.assign_public_ip}"
  }
}

resource "aws_ecr_repository" "repository" {
  name = "${var.ecr_repository_name}"
}

module "app_ecs_task_definition" {
  source = "terraform-module-ecs//task-definition?ref=1.1.9"

  family                = "${var.app_task_name}"
  container_definitions = "${data.template_file.task_definition.rendered}" # task-definition.json file  

  network_mode             = "${var.network_mode}"
  requires_compatibilities = "${var.requires_compatibilities}"
  cpu                      = "${var.task_definition_cpu}"
  memory                   = "${var.task_definition_memory}"
  execution_role_arn       = "${var.execution_role_arn}"
  cloudwatch_group_logs    = "${var.cw_group_log}"
}

module "app_ecs_service" {
  source = "terraform-module-ecs//service?ref=1.1.1"

  ecs_service_name = "service-${var.app_container_name}"
  cluster_id       = "${data.terraform_remote_state.koin_bureaus.outputs.ecs_cluster_id}" # IMPORT IN DATA REMOTE STATE
  task_definition  = "${module.app_ecs_task_definition.arn}"
  desired_count    = "${var.desired_count}"

  # LoadBalancer
  target_group_arn = "${module.app_target_group.alb_tg_arn}"
  container_name   = "container-${var.app_container_name}"
  container_port   = "${var.app_container_port}"

  # Network
  subnets          = "${var.subnets}"
  security_groups  = "${var.security_groups}"
  assign_public_ip = "${var.app_assign_public_ip}"

  # ECR 
  ecr_repository_name = "${var.app_container_name}"
}

# module "lb_listener" {
# LISTENER DE ALB JA PROVISIONADO LOGO ESTA SENDO USADO DATA SOURCE
#   source = "terraform-module-alb//aws_lb_listener?ref=1.0"

#   load_balancer_arn = "${data.aws_lb.alb.id}"
#   port              = "${var.listener_port}"
#   protocol          = "${var.listener_protocol}"
# }

module "lb_listener_http_rule" {
  source = "terraform-module-alb//aws_lb_listener_rule?ref=1.0"

  listener_arn     = "${data.aws_lb_listener.http_listener.arn}"
  priority         = 360
  type             = "${var.lb_listener_rule_type}"
  target_group_arn = "${module.app_target_group.alb_tg_arn}"
  field            = "${var.field}"
  values           = "${var.dns_name}"
}

module "app_target_group" {
  source = "terraform-module-alb//aws_lb_target_group?ref=1.1"

  name                 = "tg-ecs-service-${var.app_container_name}"
  port                 = "${var.tg_port}"
  protocol             = "${var.tg_protocol}"
  vpc_id               = "${var.vpc_id}"
  target_type          = "${var.tg_target_type}"
  tg_health_check_port = "${var.tg_port}"
  matcher              = "${var.health_check_matcher}"
  path                 = "${var.health_check_path}"
}

module "route_53_record" {
  source = "terraform-module-r53-record?ref=1.0"

  route53_zone_id      = "${var.route53_zone_id}"
  dns_name             = "${var.dns_name}"
  dns_name_elb         = "${data.aws_lb.alb.dns_name}"
  dns_name_elb_zone_id = "${data.aws_lb.alb.zone_id}"
}

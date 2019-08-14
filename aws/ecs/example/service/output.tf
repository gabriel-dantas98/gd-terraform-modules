## SERVICE OUTPUT ##
output "service_arn" {
  value = "${module.app_ecs_service.ecs_service_arn}"
}

output "service_id" {
  value = "${module.app_ecs_service.ecs_service_id}"
}

output "service_name" {
  value = "${module.app_ecs_service.ecs_service_name}"
}

## ECR OUTPUT ##
output "ecr_arn" {
  value = "${module.app_ecs_service.ecr_arn}"
}

output "ecr_name" {
  value = "${module.app_ecs_service.ecr_name}"
}

output "ecr_id" {
  value = "${module.app_ecs_service.ecr_id}"
}

output "ecr_url" {
  value = "${module.app_ecs_service.ecr_url}"
}

# TASK DEFINITION OUTPUT ##
output "task_definition_arn" {
  value = "${module.app_ecs_task_definition.arn}"
}

output "task_definition_version" {
  value = "${module.app_ecs_task_definition.version}"
}

output "task_definition_family" {
  value = "${module.app_ecs_task_definition.family}"
}

## ROUTE 53 ##


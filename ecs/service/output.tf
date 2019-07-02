output "ecs_service_arn" {
  value = "${aws_ecs_service.service.cluster}"
}

output "ecs_service_id" {
  value = "${aws_ecs_service.service.id}"
}

output "ecs_service_name" {
  value = "${aws_ecs_service.service.name}"
}

output "ecr_arn" {
  value = "${aws_ecr_repository.repository.arn}"
}

output "ecr_name" {
  value = "${aws_ecr_repository.repository.name}"
}

output "ecr_id" {
  value = "${aws_ecr_repository.repository.registry_id}"
}

output "ecr_url" {
  value = "${aws_ecr_repository.repository.repository_url}"
}

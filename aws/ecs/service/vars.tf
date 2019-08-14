## SERVICE ##
variable "ecs_service_name" {}

variable "desired_count" {
  default = 1
}

variable "cluster_id" {}
variable "task_definition" {}
variable "target_group_arn" {}
variable "container_name" {}
variable "container_port" {}

variable "subnets" {
  type = "list"
}

variable "security_groups" {
  type = "list"
}

variable "assign_public_ip" {}

variable "launch_type" {
  default = "FARGATE"
}

## ECR ##
variable "ecr_repository_name" {}

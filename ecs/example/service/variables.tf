## TASK DEFINITION TEMPLATE ##

variable "cw_group_log" {
  default = "/ecs/cluster_name/service_name"
}

variable "cw_region_log" {
  default = "us-east-1"
}

variable "cw_prefix_log" {
  default = "app-prefix"
}

variable "host_port" {
  default = 8080
}

variable "protocol" {
  default = "tcp"
}

variable "container_port" {
  default = 8080
}

variable "container_cpu" {
  default = 0
}

variable "container_memory_reservation" {
  default = "null"
}

variable "database_password" {
  default = "not-the-best-way"
}

variable "database_url" {
  default = "jdbc:mysql://database/database?zeroDateTimeBehavior=convertToNull"
}

variable "database_username" {
  default = "app_user"
}

## TASK DEFINITION ##
variable "app_task_name" {
  default = "task-app"
}

variable "network_mode" {
  default = "awsvpc"
}

variable "requires_compatibilities" {
  default = "FARGATE"
}

variable "task_definition_cpu" {
  default = 256
}

variable "task_definition_memory" {
  default = 512
}

variable "execution_role_arn" {
  default = "arn:aws:iam::473023317689:role/ecsTaskExecutionRole"
}

## SERVICE ##

variable "desired_count" {
  default = 1
}

variable "app_container_name" {
  default = "bvs"
}

variable "app_container_port" {
  default = 8080
}

variable "app_host_port" {
  default = 80
}

variable "subnets" {
  default = ["subnet-46846149898787987", "subnet-46545454564"]
}

variable "security_groups" {
  default = ["sg-548643241844854"]
}

variable "app_assign_public_ip" {
  default = true
}

## ALB LISTENER ##
# variable "listener_port" {
#   default = 80
# }

# variable "listener_protocol" {
#   default = "HTTP"
# }

## ALB LISTENER ROLE ##
variable "field" {
  default = "host-header"
}

variable "lb_listener_rule_type" {
  default = "forward"
}

## TARGET GROUP ##
variable "tg_port" {
  default = 8080
}

variable "tg_protocol" {
  default = "HTTP"
}

variable "vpc_id" {
  default = "vpc-8746454684"
}

variable "tg_target_type" {
  default = "ip"
}

variable "health_check_matcher" {
  default = 200
}

variable "health_check_path" {
  default = "api/healthcheck"
}

## ROUTE 53 ##
variable "dns_name" {
  default = "ecs-app.test.com.br"
}

variable "route53_zone_id" {
  default = "KKKKKKKKK"
}
variable "ecr_repository_name" {
  default = "5416546584.dkr.ecr.us-east-1.amazonaws.com/app-image:latest"
}
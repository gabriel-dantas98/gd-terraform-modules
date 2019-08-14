#################################
#######OUTPUT ECS_CLUSTER########
#################################
output "ecs_cluster_id" {
  value = "${module.ecs_cluster.ecs_cluster_id}"
}

output "ecs_cluster_arn" {
  value = "${module.ecs_cluster.ecs_cluster_arn}"
}

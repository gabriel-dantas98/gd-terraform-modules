module "ecs_cluster" {
  source = "terraform-module-ecs//cluster?ref=1.0"

  ecs_cluster_name = "${var.ecs_cluster_name}"
}

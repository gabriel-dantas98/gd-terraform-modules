module "autoscaling_group" {
    //source = "git::https://github.com/gabriel-dantas98/gd-terraform-modules.git//auto_scaling"
    source             = "../"
    autoscaling_group_name = var.asg_name
    launch_configuration_name = var.lc_name
    desired_capacity = var.desired_capacity
    max_size = var.max_size
    min_size = var.min_size

    availability_zones = var.availability_zones

    target_group_arns = var.target_group_arns

    health_check_type = var.health_check_type
    health_check_grace_period = var.health_check_grace_period

    autoscaling_group_tags = var.tags 
}

data "template_file" "task_definition" {
  template = "${file("${path.module}/template_tf.tpl")}"

  vars = {
    cloudwatch_group_log         = "${var.cw_group_log}"
    cloudwatch_region_log        = "${var.cw_region_log}"
    cloudwatch_prefix_log        = "${var.cw_prefix_log}"
    host_port                    = "${var.host_port}"
    protocol                     = "${var.protocol}"
    container_port               = "${var.container_port}"
    container_cpu                = "${var.container_cpu}"
    container_memory_reservation = "${var.container_memory_reservation}"
    database_password            = "${var.database_password}"
    database_url                 = "${var.database_url}"
    database_username            = "${var.database_username}"
    bvs_code                     = "${var.bvs_code}"
    bvs_expire                   = "${var.bvs_expire}"
    bvs_password                 = "${var.bvs_password}"
    bvs_url                      = "${var.bvs_url}"
    bvs_customized_score         = "${var.bvs_customized_score}"
    bvs_timeout                  = "${var.bvs_timeout}"
    bvs_type_document            = "${var.bvs_type_document}"
    container_name               = "container-${var.app_container_name}"
    ecr_repository_name          = "${var.ecr_repository_name}"
  }
}

data "terraform_remote_state" "cluster_state" {
  backend = "s3"

  config = {
    bucket = "terraform-bucket"
    region = "us-east-1"
    key    = "folder-states/cluster.tfstate"
  }
}

data "aws_lb" "alb" {
  name = "ecs-cluster-name"
}

data "aws_lb_listener" "http_listener" {
  load_balancer_arn = "${data.aws_lb.alb.arn}"
  port              = 80
}

resource "aws_api_gateway_rest_api" "api" {
  name        = "${var.api_name}"
  description = "${var.description}"
}

module "aws_api_gateway_resource" {
  source      = "./resource"
  rest_api_id = "${aws_api_gateway_rest_api.api.id}"
  parent_id   = "${aws_api_gateway_rest_api.api.root_resource_id}"
  path_part   = "${var.path}"
}

module "aws_api_gateway_method" {
  source = "./method"

  rest_api_id = "${aws_api_gateway_rest_api.api.id}"
  resource_id = "${module.aws_api_gateway_resource.id}"
  http_method = "${var.http_verb}"
}

module "aws_api_gateway_integration" {
  source = "./integration"

  region               = "${var.region}"
  account_id           = "${var.account_id}"
  rest_api_id          = "${aws_api_gateway_rest_api.api.id}"
  resource_id          = "${module.aws_api_gateway_resource.id}"
  http_method          = "${module.aws_api_gateway_method.http_method}"
  lambda_arn           = "${var.lambda_arn}"
  resource_path        = "${module.aws_api_gateway_resource.path}"
  response_status_code = "${module.aws_api_gateway_method.status_code}"
}

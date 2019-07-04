module "api_gateway" {
  source      = "./../../modules/api_gateway"
  api_name    = "lambda_api"
  path        = "api"
  http_verb   = "GET"
  description = "Mo legal!"
  region      = "${local.region}"
  account_id  = "${local.account_id}"
  lambda_arn  = "${module.lambda.arn}"
}

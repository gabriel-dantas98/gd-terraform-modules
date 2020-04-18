module "api_gateway" {
  source      = "../"
  api_name    = "lambda_api"
  description = "Mo legal!"
  endpoint_configuration_types = ["REGIONAL"]
}

module "api_gateway_resource" {
  source  = "../resource"
  resource_type = ""
}

module "api_gateway_method_resource" {
  source = "../resource/method"

  method_rest_api_id = var.api_gateway.id
  method_resource_id = var.api_gateway_resource.id 
  method_type = "GET"

  method_integration = 
  method_integration_type = "AWS_PROXY"
  lambda_invoke_arn = aws_lambda_function.lambda.invoke_arn
}

resource "aws_api_gateway_method" "method" {
  rest_api_id   = var.method_rest_api_id
  resource_id   = var.method_resource_id
  http_method   = var.method_type
  authorization = var.method_authorization
}

# resource "aws_api_gateway_method_response" "response" {
#   rest_api_id = "${var.rest_api_id}"
#   resource_id = "${var.resource_id}"
#   http_method = "${aws_api_gateway_method.method.http_method}"
#   status_code = "${var.status_code}"
# }

resource "aws_api_gateway_integration" "integration" {
  rest_api_id             = var.method_rest_api_id
  resource_id             = var.method_resource_id
  http_method             = var.method_type
  integration_http_method = var.method_type
  type                    = var.method_integration_type
  uri = var.lambda_invoke_arn
}

resource "aws_lambda_permission" "apigw_lambda" {
  statement_id  = "AllowExecutionFromAPIGateway"
  action        = "lambda:InvokeFunction"
  function_name = var.lambda_arn
  principal     = "apigateway.amazonaws.com"

  # More: http://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-control-access-using-iam-policies-to-invoke-api.html
  source_arn = var.lambda_arn
}

# resource "aws_api_gateway_integration_response" "integration_response" {
#   rest_api_id = "${var.rest_api_id}"
#   resource_id = "${var.resource_id}"
#   http_method = "${var.http_method}"
#   status_code = "${var.response_status_code}"
# }

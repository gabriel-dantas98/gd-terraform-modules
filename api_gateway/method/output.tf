output "http_method" {
  value = "${aws_api_gateway_method.method.http_method}"
}

output "status_code" {
  value = "${aws_api_gateway_method_response.response.status_code}"
}

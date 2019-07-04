resource "aws_iam_role" "iam_for_lambda" {
  name = "gd-iam_for_lambda_${var.function_name}"

  assume_role_policy = "${file("${path.module}/policys/lambda_policy.json")}"
}

resource "aws_lambda_function" "lambda" {
  #filename         = "lambda_function_payload.zip"  #source_code_hash = "${base64sha256(file("lambda_function_payload.zip"))}"

  s3_bucket     = "${var.bucket_name}"
  s3_key        = "${var.bucket_key}"
  function_name = "${var.function_name}"
  role          = "${aws_iam_role.iam_for_lambda.arn}"
  handler       = "${var.handler}"
  runtime       = "${var.runtime}"

  environment {
    variables = {
      PASSWORD = "mlkdoido"
    }
  }
}

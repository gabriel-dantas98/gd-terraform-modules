
module "lambda" {
  source        = "./../../modules/lambda"
  bucket_name   = "gb-lambda-bucket"
  bucket_key    = "python.zip"
  function_name = "gd-lambda-hello-world"
  runtime       = "python3.7"
}

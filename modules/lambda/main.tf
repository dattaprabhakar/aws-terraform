
resource "aws_lambda_function" "sample" {
  function_name = "sample-lambda"
  role          = var.lambda_role_arn
  handler       = "index.handler"
  runtime       = "nodejs14.x"
  filename      = "lambda.zip"
}

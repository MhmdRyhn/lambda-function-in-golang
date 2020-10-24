resource "aws_lambda_function" "lambda_function" {
  function_name    = "${local.resource_name_prefix}-lambda_function_in_golang"
  description      = "This function is written using Go Language"
  filename         = data.archive_file.lambda_function_zip.output_path
  handler          = "main"
  source_code_hash = data.archive_file.lambda_function_zip.output_base64sha256
  role             = aws_iam_role.lambda_execution_role.arn
  runtime          = local.go_runtime
  timeout          = local.lambda_timeout
}

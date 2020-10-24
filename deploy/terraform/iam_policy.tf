resource "aws_iam_role_policy" "lambda_execution_inline_policy" {
  name   = "LambdaExecutionInlinePolicy"
  role   = aws_iam_role.lambda_execution_role.id
  policy = data.aws_iam_policy_document.lambda_execution_policy_document.json
}

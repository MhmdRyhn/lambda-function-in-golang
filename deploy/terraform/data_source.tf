data "archive_file" "lambda_function_zip" {
  type        = "zip"
  source_file = "${local.build_dir}/main"
  output_path = "${local.build_dir}/function.zip"
}

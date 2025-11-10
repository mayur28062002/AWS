resource "aws_iam_role" "lambda_exec" {
  name = "${var.project}-lambda-exec-${var.env}"
  assume_role_policy = data.aws_iam_policy_document.lambda_assume.json
}

data "aws_iam_policy_document" "lambda_assume" {
  statement { actions = ["sts:AssumeRole"] principals { type = "Service" identifiers = ["lambda.amazonaws.com"] } }
}

resource "aws_lambda_function" "etl" {
  function_name = var.function_name
  filename      = var.zip_path
  handler       = var.handler
  runtime       = var.runtime
  role          = aws_iam_role.lambda_exec.arn
  source_code_hash = filebase64sha256(var.zip_path)
}

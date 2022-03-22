locals {
  source_dir          = length(var.function_source_dir) == 0 ? "../functions/${var.name}" : var.function_source_dir
  function_source_dir = "${local.source_dir}/function"
  function_source_zip = "${local.source_dir}/lambda_function.zip"
}

data "archive_file" "function_zip" {
  count       = length(var.package) == 0 ? 1 : 0
  type        = "zip"
  source_dir  = local.function_source_dir
  output_path = local.function_source_zip
}

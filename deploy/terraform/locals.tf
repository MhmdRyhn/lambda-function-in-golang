locals {
  resource_name_prefix = "${var.prefix}-${var.environment}"
}

locals {
  go_runtime     = "go1.x"
  lambda_timeout = 10
}


locals {
  build_dir = "${path.module}/../../.build"
}


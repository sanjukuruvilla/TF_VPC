terraform {
  required_providers {
    aws = {
      source  = hashicorpaws
      version = ~ 3.0
    }
  }
}

provider aws {
  region = var.aws_region
}

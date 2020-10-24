terraform {
  required_providers {
    aws = {
      version = ">= 3.12"
      source  = "hashicorp/aws"
    }
    archive = {
      version = ">= 2.0"
      source  = "hashicorp/archive"
    }
  }
}


provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}

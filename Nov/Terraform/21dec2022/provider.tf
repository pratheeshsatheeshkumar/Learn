terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"

    }
  }
}


provider "aws" {
  region = var.region

  default_tags {
    # tags = {
    #   project = var.project
    #   env     = var.environment
    #   owner   = var.owner
    # }
    tags = local.common_tags

  }
}



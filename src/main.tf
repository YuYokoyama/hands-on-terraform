# ---------------------------------
# Terraform configuration
# ---------------------------------
terraform {
  required_version = ">=0.13"

  # https://www.terraform.io/language/providers/requirements#requiring-providers
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}

# ---------------------------------
# Provider
# ---------------------------------
provider "aws" {
  # profile = ""
  region = "ap-northeast-1"
}

# ---------------------------------
# Variable
# ---------------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string
}

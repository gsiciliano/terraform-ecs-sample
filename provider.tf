# Setup the AWS provider | provider.tf
terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = {
      version = "~> 2.12"
    }
  }
}
provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
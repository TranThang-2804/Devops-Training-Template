provider "aws" {
  region     = "ap-southeast-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

terraform {
  required_version = ">= 1.1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
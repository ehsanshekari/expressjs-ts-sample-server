terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
  }
  backend "s3" {
    bucket         = "just-a-bucket-to-test-1"
    region         = "eu-north-1"
    key            = "s3-github-actions/terraform.tfstate"
    encrypt        = true
  }
}

provider "aws" {
}
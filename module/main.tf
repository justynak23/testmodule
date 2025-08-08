terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.96.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      CreatedBy = "Terraform"
    }
  }
}

resource "aws_s3_bucket" "This" {
  bucket = "sillybucketname1231243213"

  versioning {
    enabled = false
  }
}
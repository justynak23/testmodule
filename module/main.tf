terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.96.0"
    }
  }
}

resource "aws_s3_bucket" "This" {
  bucket = "my-bucket"
}

resource "aws_s3_bucket_versioning" "This" {
  bucket = aws_s3_bucket.This.id

  versioning_configuration {
    status = "Enabled"
  }
}

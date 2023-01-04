terraform {
  required_version = "1.3.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.48.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-00000001"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Service     = "s3"
    Team        = "devops"
    ManagedBy   = "Terraform"
    Owner       = "Lucas Garcia Marques"
    UpdateAt    = "2023-01-04"
  }
}
resource "aws_s3_bucket_acl" "example_bucket_acl" {
  bucket = aws_s3_bucket.my-test-bucket.id
  acl    = "private"
}

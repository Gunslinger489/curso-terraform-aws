terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
    default_tags {
      tags = {
          Owner = "Lucas Marques"
          Env = "dev"
      }
  }
}

resource "random_id" "s3_id" {
  byte_length = 2
}

resource "aws_s3_bucket" "sales_bucket" {
  bucket = "local-sales-${random_id.s3_id.dec}"

  tags = {
    Env     = "prod"
    Service = "s3"
    Team    = "sales"
  }
}

resource "aws_s3_bucket" "finance_bucket" {
  bucket = "local-finance-${random_id.s3_id.dec}"

  tags = {
    Env     = "dev"
    Service = "s3"
    Team    = "finance"
  }
}

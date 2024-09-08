terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
}

resource "aws_s3_bucket" "mys3bucket" {
  bucket = var.bucketname
  tags = {
    Name        = "MyS3Bucket"
    Environment = "Dev"
  }
}
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

resource "aws_instance" "app_server" {
  for_each = var.ec2_type
  ami           = var.aws_ami
  instance_type = each.value
  tags = {
    Name = var.ec2_tag
  }
}
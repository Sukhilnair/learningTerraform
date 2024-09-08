variable "aws_region" {
  description = "This will define the aws region"
  type = string
  default = "ap-northeast-2"
}

variable "aws_ami" {
  description = "AMI id for ubuntu"
  type = string
  default = "ami-05d2438ca66594916"
}

variable "ec2_tag" {
  description = "Tag for all the ec2"
  type = string
  default = "sukhil-terraform"
}

variable "ec2_type" {
  description = "Types of ec2 instances"
  type = map(string)
  default = {
    instance1 = "t2.micro"
    instance2 = "t2.micro"
    instance3 = "t2.micro"
  }
  
}
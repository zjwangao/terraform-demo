#terraform block
terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

#provider block
provider "aws" {
  region  = var.aws_region
  profile = "zjwangao"
}

resource "aws_instance" "ec2_demo" {
  ami           = "ami-013a28d7c2ea10269"
  instance_type = "t2.micro"
  tags = {
    "Name" = "EC2 Demo"
  }
}

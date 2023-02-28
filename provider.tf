terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }


provider "aws" {
  # Configuration options
  region     = "us-west-2"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

resource "aws_instance" "test_instance" {
  ami           = "ami-830c94e3"
  instance_type = "t2.nano"
  tags = {
    Name = "test_instance"
  }
}

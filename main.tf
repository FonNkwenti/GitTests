terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "my-first-server" {
  ami           = "ami-021809d9177640a20"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld3"
  }
}

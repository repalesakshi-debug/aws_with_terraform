terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws"  {
   region = "eu-west-3"
}
resource "aws_instance" "example" {
  ami           = "ami-0ee4fb6dd349fd6e9"
  instance_type = "t3.micro"
  subnet_id = "subnet-07fb3b2823c61df61"

  tags = {
    Name = "HelloWorld"
  }
}
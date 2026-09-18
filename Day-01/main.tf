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
  ami           = "ami-0e1c4170d9c01184b "
  instance_type = "t3.micro"
  subnet_id = "subnet-07fb3b2823c61df61"

  tags = {
    Name = "HelloWorld"
  }
}
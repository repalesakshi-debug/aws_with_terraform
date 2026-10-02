terraform {
  backend "s3" {
    bucket = "terraform-bucket-sakshi-2"

    key    = "security/fctp/dev/ec2/terraform.tfstate"

    region = "eu-west-3"
  }
}
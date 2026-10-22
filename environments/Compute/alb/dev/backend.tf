terraform {
  backend "s3" {
    bucket = "terraform-bucket-sakshi-2"

    key    = "security/fctp/alb/terraform.tfstate"

    region = "eu-west-3"
  }
}
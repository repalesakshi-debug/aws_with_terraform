terraform {
  backend "s3" {
    bucket = "terraform-bucket-sakshi-2"

    key    = "Compute/fctp/dev/tg/terraform.tfstate"

    region = "eu-west-3"
  }
}
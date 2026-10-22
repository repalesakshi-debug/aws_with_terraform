terraform {
  backend "s3" {
    bucket = "terraform-bucket-sakshi-2"

    key    = "Storage/fctp/dev/s3/demo/terraform.tfstate"

    region = "eu-west-3"
  }
}
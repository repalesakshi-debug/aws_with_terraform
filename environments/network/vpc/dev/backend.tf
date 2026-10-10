terraform {
  backend "s3" {
    bucket = "terraform-bucket-sakshi-2"

    key    = "network/fctp/dev/vpc/terraform.tfstate"

    region = "eu-west-3"
  }
}


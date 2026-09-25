terraform {
  backend "s3" {
    bucket = "terraform-bucket-sakshi-1"
    key    = "Networking/fctp/prod/vpc/terraform.tfstate"
    region = "eu-west-3"
  }
}
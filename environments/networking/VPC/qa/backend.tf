terraform {
  backend "s3" {
    bucket = "terraform-bucket-sakshi-1"
    key    = "Networking/fctp/qa/vpc/terraform.tfstate"
    region = "eu-west-3"
  }
}
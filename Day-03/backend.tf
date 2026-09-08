terraform {
  backend "s3" {
    bucket = "terraform-bucket-sakshi-1"
    key    = "compute/Day-03/terraform.tfstate"
    region = "eu-west-3"
  }
}
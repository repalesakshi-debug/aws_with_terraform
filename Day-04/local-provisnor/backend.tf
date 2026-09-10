terraform {
  backend "s3" {
    bucket = "terraform-bucket-sakshi-1"
    key    = "compute/Day-04/local-provisnor/terraform.tfstate"
    region = "eu-west-3"
  }
}
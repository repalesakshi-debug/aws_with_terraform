terraform {
  backend "s3" {
    bucket = "terraform-bucket-sakshi-1"
    key    = "compute/Day-04/file-provisnors/terraform.tfstate"
    region = "eu-west-3"
  }
}
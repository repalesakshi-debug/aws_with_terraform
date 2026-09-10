terraform {
  backend "s3" {
    bucket = "terraform-bucket-sakshi-1"
    key    = "compute/Day-04/remote-exec/terraform.tfstate"
    region = "eu-west-3"
  }
}
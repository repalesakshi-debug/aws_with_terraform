terraform {
  backend "s3" {

    bucket = "terraform-bucket-sakshi-2" # this must be your s3 bucket name
    key    = "network/fctp/dev/vpc-endpoints-demo/terraform.tfstate"
    region = "eu-west-3"
  }
}
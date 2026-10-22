terraform {
  backend "s3" {

    bucket = "terraform-bucket-sakshi-2" # this must be your s3 bucket name
    key    = "Computer/ec2/docker/terraform.tfstate"
    region ="eu-west-3"
  }
}
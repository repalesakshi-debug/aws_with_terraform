terraform {
  backend "s3" {

    bucket = "terraform-bucket-sakshi-2" # this must be your s3 bucket name
    key    = "Compute/fctp/dev/vpc-endpoints-demo-ec2/terraform.tfstate"
    region = "eu-west-3"
  }
}
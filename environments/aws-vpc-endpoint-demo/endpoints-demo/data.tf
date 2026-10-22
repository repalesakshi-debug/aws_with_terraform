#################################################
# NETWORK REMOTE STATE
#################################################

data "terraform_remote_state" "network" {

  backend = "s3"

  config = {

    bucket = "terraform-bucket-sakshi-2" # this must be your s3 bucket name
    key    = "network/fctp/dev/vpc-endpoints-demo/terraform.tfstate"
    region = "eu-west-3"
  }
}
#############################################################
# Network Remote State
#############################################################

data "terraform_remote_state" "network" {

  backend = "s3"

  config = {

    bucket = "terraform-bucket-sakshi-2" # this must be your s3 bucket name
    key    = "network/fctp/dev/vpc/terraform.tfstate"
    region = "eu-west-3"
  }
}




#############################################################
# KMS Remote State
#############################################################

data "terraform_remote_state" "kms" {

  backend = "s3"

  config = {
    bucket = "terraform-bucket-sakshi-2" # this must be your s3 bucket name
    key    = "security/fctp/dev/kms/terraform.tfstate"
    region = "eu-west-3"
  }

}
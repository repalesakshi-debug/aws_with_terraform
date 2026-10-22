data "terraform_remote_state" "acm_backend" {
  backend = "s3"

  config = {

    bucket = "terraform-bucket-sakshi-2" # this must be your s3 bucket name
    key    = "Compute/fctp/dev/acm-alb/terraform.tfstate"
    region = "eu-west-3"

  }
}

######################################################
#### vpc_backend
#####################################################

data "terraform_remote_state" "vpc_backend" {
  backend = "s3"

  config = {

    bucket = "terraform-bucket-sakshi-2" # this must be your s3 bucket name
    key    = "network/fctp/dev/vpc/terraform.tfstate"
    region = "eu-west-3"

  }
}


###################################################
#######   acm alb backend 
###################################################

data "terraform_remote_state" "tg_backend" {
  backend = "s3"

  config = {

    bucket = "terraform-bucket-sakshi-2" # this must be your s3 bucket name
    key    = "Compute/fctp/dev/tg/terraform.tfstate"
    region = "eu-west-3"

  }
}


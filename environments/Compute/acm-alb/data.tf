data "terraform_remote_state" "dns_backend" {
  backend = "s3"

  config = {

    bucket = "terraform-bucket-sakshi-2" # this must be your s3 bucket name
    key    = "global/dns/tanmayee.qd.je/terraform.tfstate"
    region = "eu-west-3"

  }
}
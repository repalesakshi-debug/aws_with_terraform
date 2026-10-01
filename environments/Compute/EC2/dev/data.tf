data "terraform_remote_state" "vpc_backend" {
    backend = "s3"

    config = {
       bucket = "terraform-bucket-sakshi-2"

       key = "Networking/fctp/dev/vpc/terraform.tfstate"

       region = "eu-west-3"
    }
  
}
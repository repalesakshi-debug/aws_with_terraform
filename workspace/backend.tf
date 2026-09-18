terraform {
  backend "s3" {
    bucket = "terraform-bucket-sakshi-1"
    key    = "compute/dev-workspace/file-provisinor/terraform.tfstate"
    region = "eu-west-3"
  }
}
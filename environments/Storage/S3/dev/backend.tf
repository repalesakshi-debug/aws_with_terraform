terraform {
  backend "s3" {
    bucket = "terraform-bucket-sakshi-1"
    key    = "Storage/S3-bucket/dev/test/terraform.tfstate"
    region = "eu-west-3"
  }
}
variable "instance_ami_id" {
  type = string
  
}

variable "instance_type" {
  type = string

}


variable "environment" {
  type = string
  
}


variable "associate_public_ip_address" {
  type = bool

}
variable "aws_region" {
  type = string
}
variable "ami_id" {
    type = string
    default = "ami-0ee4fb6dd349fd6e9"
    description = "this is for ami id"
  
}

variable "subnet_id" {
    type = string
    default = "subnet-07fb3b2823c61df61"
    description = "this is for aws subnet id"
  
}

variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "this is for instance type"
  
}

variable "instance_count" {
    type = number
    default = 1
    description = "this is for instance count"
  
}

variable "public_ip" {
    type = bool
    default = true
    description = "this is for public ip"

  
}
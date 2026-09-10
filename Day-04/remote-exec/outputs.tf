output "instance_public_ip" {
    description = "this is for the aws ec2 public ip"
    value = aws_instance.web_app.public_ip
  
}

output "instance_private_ip" {
    description = "this is for the aws ec2 public ip"
    value = aws_instance.web_app.private_ip
  
}

output "instance_private_dns" {
    description = "this is for the aws ec2 public dns"
    value = aws_instance.web_app.private_dns
  
}

output "instance_public_dns" {
    description = "this is for the aws ec2 public ip"
    value = aws_instance.web_app.public_dns
  
}

output "sg_id" {
    value = aws_security_group.allow_tls.id
  
}
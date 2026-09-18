

resource "aws_instance" "web_app" {
  ami = var.ami_id
  subnet_id = var.subnet_id
  instance_type = var.instance_type
  #count = var.instance_count
  associate_public_ip_address = var.public_ip

  key_name = "s-paris"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

 tags = {
    Name = var.tags
  }
}


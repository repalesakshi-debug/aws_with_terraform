resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-03466e1f3fadd0f91"

  tags = {
    Name = "tf-day-03-sg"
  }
}


resource "aws_instance" "web_app" {
  ami = var.ami_id
  subnet_id = var.subnet_id
  instance_type = var.instance_type
  #count = var.instance_count
  associate_public_ip_address = var.public_ip

  key_name = "s-paris"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]


   user_data = <<-EOF
    #!/bin/bash
    apt update -y
    sudo apt install nginx -y
    echo "<h1>Hello  world </h1>" > /var/www/html/index.html
     EOF



  tags = {
    Name = "web-app"
  }
}


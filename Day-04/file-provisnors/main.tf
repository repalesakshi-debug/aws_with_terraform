resource "aws_key_pair" "custom_key" {
  key_name   = "custom-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGMgGFUv0uFOxxEv+h0v0WbNfegHpQb/TVYIEvC3lxVv repal@sakshi"
}



resource "aws_instance" "web_app" {
  ami = var.ami_id
  subnet_id = var.subnet_id
  instance_type = var.instance_type
  #count = var.instance_count
  associate_public_ip_address = var.public_ip

  key_name = aws_key_pair.custom_key.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]


  provisioner "file" {
  source      = "C:\\aws_with_terraform\\Day-04\\file-provisnors\\index.html"
  destination = "/home/ec2-user/index.html"
}
  connection {
      type        = "ssh"
      host        = self.public_ip
      user        = "ec2-user"
      private_key = file("C:\\aws_with_terraform\\Day-04\\file-provisnors\\custom-key.pem")
      timeout     = "4m"
   }



    tags = {
    Name = "web-app"
  }
}
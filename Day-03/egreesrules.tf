resource "aws_vpc_security_group_egress_rule" "outbound_traffic" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/8"
  ip_protocol = "-1"
  
}



resource "aws_vpc_security_group_egress_rule" "SSH_rule" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "TCP"
  from_port = 22
  to_port = 22
  
}



resource "aws_vpc_security_group_egress_rule" "http_rule" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "TCP"
  from_port = 80
  to_port = 80
  
}
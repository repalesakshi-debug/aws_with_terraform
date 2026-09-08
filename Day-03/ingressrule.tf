resource "aws_vpc_security_group_ingress_rule" "http_rule" {
  security_group_id = aws_security_group.allow_tls.id

  cidr_ipv4   = "0.0.0.0/8"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}

resource "aws_vpc_security_group_ingress_rule" "https_rule" {
  description = "this is aws sg https rule"
  security_group_id = aws_security_group.allow_tls.id
  ip_protocol = "tcp"
  from_port = 443
  to_port = 443
   cidr_ipv4 = "0.0.0.0/0"
}

resource "aws_vpc_security_group_ingress_rule" "SSH_rule" {
  description = "this is aws sg SSH rule"
  security_group_id = aws_security_group.allow_tls.id
  ip_protocol = "tcp"
  from_port = 22
  to_port = 22
   cidr_ipv4 = "0.0.0.0/0"
}

resource "aws_vpc_security_group_ingress_rule" "MSSQL_rule" {
  description = "this is aws sg MSSQL rule"
  security_group_id = aws_security_group.allow_tls.id
  ip_protocol = "tcp"
  from_port = 1433
  to_port = 1433
   cidr_ipv4 = "0.0.0.0/0"
}

resource "aws_vpc_security_group_ingress_rule" "ICMP_rule" {
  description = "this is aws sg ICMP rule"
  security_group_id = aws_security_group.allow_tls.id
  ip_protocol = "ICMP"
  from_port = -1
  to_port = -1
   cidr_ipv4 = "0.0.0.0/0"
}
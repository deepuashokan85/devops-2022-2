resource "aws_security_group" "allow_specific" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0084729d35b8cf72b"

  ingress {
    description      = "Custom TCP from VPC"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "SSH PORT"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    #cidr_blocks      = [aws_vpc.main.cidr_block]
    cidr_blocks      = ["0.0.0.0/0"]
  
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_specific_ports"
  }
}

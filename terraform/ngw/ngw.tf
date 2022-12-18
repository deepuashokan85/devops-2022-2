resource "aws_nat_gateway" "janani" {
  allocation_id = aws_eip.janani.id
  subnet_id     = aws_subnet.janani.id

  tags = {
    Name = "gw NAT"
  }

  depends_on = [aws_internet_gateway.example]
}

#resource "aws_nat_gateway" "janani" {
#  connectivity_type = "private"
#  subnet_id         = aws_subnet.janani.id
}

output "aws_nat_gateway_ip" {
        value = aws_nat_gateway.janani.id

}


resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id      = aws_vpc.main.id 
  tags = {
    Name = "main"
  }
}

output "aws_internet_gateway_id" {
        value = aws_internet_gateway.gw.id

}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block ="0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

}

resource "aws_subnet" "main" {
  vpc_id = "vpc-090d3a31ba81da8d4"
  #vpc_id     = aws_vpc.main.id
  cidr_block = "172.31.0.0/20"

  tags = {
    Name = "kris-subnet"
  }
}


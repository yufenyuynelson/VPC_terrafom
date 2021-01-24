resource "aws_subnet" "PublicSubnet" {
  vpc_id     = aws_vpc.Nelsony.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "PublicSubnet"
  }
}

resource "aws_subnet" "PrivateSubnet" {
  vpc_id     = aws_vpc.Nelsony.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "PrivateSubnet"
  }
}
resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.Nelsony.id

  tags = {
    Name = "IGW"
  }
}


### to create
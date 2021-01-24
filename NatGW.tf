resource "aws_nat_gateway" "NatGW" {
  allocation_id = aws_eip.ElasticIP.id
  subnet_id     = aws_subnet.PublicSubnet.id

  tags = {
    Name = "NatGW"
  }
}

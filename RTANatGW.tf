##Route table for the NAT
resource "aws_route_table" "NAT_RTB" {
  vpc_id = aws_vpc.Nelsony.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.NatGW.id
  }

  tags = {
    Name = "NAT_RTB"
  }
}


###Route Table for public Subnet
resource "aws_route_table" "Public_RTB" {
  vpc_id = aws_vpc.Nelsony.id
   route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }
  tags = {
    "Name" = "Public_RTB"
  }
}
#####Route table association with Public subnet
resource "aws_route_table_association" "Pub_Association" {
  subnet_id      = aws_subnet.PublicSubnet.id
  route_table_id = aws_route_table.Public_RTB.id
}


#####Route table association with Private subnet
resource "aws_route_table_association" "Private_Association" {
  subnet_id      = aws_subnet.PrivateSubnet.id
  route_table_id = aws_route_table.NAT_RTB.id
}



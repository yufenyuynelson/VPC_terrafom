resource "aws_vpc" "Nelsony" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Nelsony"
  }
}
resource "aws_eip" "ElasticIP" {
  vpc      = true
  tags = {
    "Name" = "ElasticIP"
  }
}
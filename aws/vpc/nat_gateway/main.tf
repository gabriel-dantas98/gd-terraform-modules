resource "aws_eip" "nat_gateway_eip" {
  tags = {
    Name = "ElasticIP-NGW"
  }
}

resource "aws_nat_gateway" "nat_gateway" {

  allocation_id = aws_eip.nat_gateway_eip.id
  subnet_id     = var.subnets_ids[0]

  tags = {
    Name = "NGW-${var.vpc_name}"
  }  
}

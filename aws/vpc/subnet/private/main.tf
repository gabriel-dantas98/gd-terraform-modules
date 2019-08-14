resource "aws_subnet" "subnet" {

  vpc_id = var.vpc_id

  count = length(var.subnets_cidrs) > 0 ? length(var.subnets_cidrs) : 0

  cidr_block = var.subnets_cidrs[count.index]
  availability_zone = var.subnet_availability_zones[count.index]
  map_public_ip_on_launch = var.map_ip_on_launch

  tags = {
    Name = "${var.vpc_name}-PrivateSubnet-${var.subnet_availability_zones[count.index]}"
    VPC = var.vpc_id 
    Terraform = "True"
  }
}

module "nat_gateway" {
  source = "../../nat_gateway"
  vpc_name = var.vpc_name
  subnets_ids = aws_subnet.subnet[*].id 
}

resource "aws_route_table" "route_table" {
  count = length(aws_subnet.subnet[*].id)

  vpc_id           = "${var.vpc_id}"

  route {
    cidr_block     = var.route_cidr
    nat_gateway_id = module.nat_gateway.id
  }

  tags = {
    Name        = "PrivateRT-${aws_subnet.subnet[count.index].id}"
    Terraform   = "True"
  }
}

resource "aws_route_table_association" "rt_ass" {
  count          = length(aws_subnet.subnet[*].id)
  subnet_id      = aws_subnet.subnet[count.index].id
  route_table_id = aws_route_table.route_table[count.index].id
}

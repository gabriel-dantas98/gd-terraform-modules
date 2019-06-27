resource "aws_subnet" "subnet" {
  count = length(var.subnets_cidrs)

  vpc_id = var.vpc_id
  cidr_block = var.subnets_cidrs[count.index]
  availability_zone = var.subnet_availability_zones[count.index]
  map_public_ip_on_launch = var.map_ip_on_launch

  tags = {
    Name = "${var.vpc_name}-PubSubnet-${var.subnet_availability_zones[count.index]}"
    VPC = var.vpc_id 
  }
}

module "internet_gateway" {
  source = "../../internet_gateway"
  vpc_name = var.vpc_name
  vpc_id = var.vpc_id
}

resource "aws_route_table" "route_table" {
  count = length(aws_subnet.subnet[*].id)

  vpc_id = "${var.vpc_id}"

  route {
    cidr_block     = var.route_cidr
    gateway_id     = module.internet_gateway. id
  }

  tags = {
    Name             = "PublicRT-${aws_subnet.subnet[count.index].id}"
    Terraform = "True"
    VPC = var.vpc_id
  }
}

resource "aws_route_table_association" "rt_ass" {
  count          = length(aws_subnet.subnet[*].id)

  subnet_id      = aws_subnet.subnet[count.index].id
  route_table_id = aws_route_table.route_table[count.index].id
}


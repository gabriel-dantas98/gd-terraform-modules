##########################
# PRIVATE SUBNET OUTPUTS #
##########################

output "id" {
  value = aws_subnet.subnet[*].id
  description = "List with IDs of subnets"
}

output "arn" {
  value = aws_subnet.subnet[*].arn
  description = "List with Arns of subnets"
}

#######################
# NAT GATEWAY OUTPUTS #
#######################

output "ngw_id" {
  value = module.nat_gateway.id
  description = "The ID of the NAT Gateway."
}

output "ngw_allocation_id" {
  value = module.nat_gateway.allocation_id
  description = "The Allocation ID of the Elastic IP."
}

output "ngw_subnet_id" {
  value = module.nat_gateway.subnet_id
  description = "The Subnet ID of the subnet in which the NAT gateway is placed."
}

output "ngw_network_interface_id" {
  value = module.nat_gateway.network_interface_id
  description = "The ENI ID of the network interface created by the NAT gateway."
}

output "ngw_private_ip" {
  value = module.nat_gateway.private_ip
  description = "The private IP address of the NAT Gateway."
}

output "ngw_public_ip" {
  value = module.nat_gateway.public_ip
  description = "The public IP address of the NAT Gateway."
}

##########################
# NGW ELASTIC IP OUTPUTS #
##########################

output "ngw_eip_id" {
  value = module.nat_gateway.id
  description = "Contains the Elastic IP allocation ID."
}

#######################
# ROUTE TABLE OUTPUTS #
#######################

output "rt_id" {
  value = aws_route_table.route_table[*].id
  description = "List with IDs of route tables"
}
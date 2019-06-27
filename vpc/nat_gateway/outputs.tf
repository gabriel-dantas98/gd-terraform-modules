###############
# NAT OUTPUTS #
###############

output "id" {
  value = aws_nat_gateway.nat_gateway.id
  description = "The ID of the NAT Gateway."
}

output "allocation_id" {
  value = aws_nat_gateway.nat_gateway.allocation_id
  description = "The Allocation ID of the Elastic IP."
}

output "subnet_id" {
  value = aws_nat_gateway.nat_gateway.subnet_id
  description = "The Subnet ID of the subnet in which the NAT gateway is placed."
}

output "network_interface_id" {
  value = aws_nat_gateway.nat_gateway.network_interface_id
  description = "The ENI ID of the network interface created by the NAT gateway."
}

output "private_ip" {
  value = aws_nat_gateway.nat_gateway.private_ip
  description = "The private IP address of the NAT Gateway."
}

output "public_ip" {
  value = aws_nat_gateway.nat_gateway.public_ip
  description = "The public IP address of the NAT Gateway."
}

######################
# ELASTIC IP OUTPUTS #
######################

output "eip_id" {
  value = aws_eip.nat_gateway_eip.id
  description = "Contains the EIP allocation ID."
}

output "eip_private_ip" {
  value = aws_eip.nat_gateway_eip.private_ip 
  description = "Contains the private IP address (if in VPC)."
}

output "eip_private_dns" {
  value = aws_eip.nat_gateway_eip.private_dns
  description = "The Private DNS associated with the Elastic IP address (if in VPC)."
}

output "eip_public_ip" {
  value = aws_eip.nat_gateway_eip.public_ip 
  description = "Contains the public IP address."
}

output "eip_private_dns" {
  value = aws_eip.nat_gateway_eip.public_dns
  description = "The Public DNS associated with the Elastic IP address."
}


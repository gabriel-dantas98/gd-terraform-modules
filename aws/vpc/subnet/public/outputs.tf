#########################
# PUBLIC SUBNET OUTPUTS #
#########################

output "id" {
  value = aws_subnet.subnet[*].id
  description = "List with IDs of subnets."
}

output "arn" {
  value = aws_subnet.subnet[*].arn
  description = "List with Arns of subnets."
}

############################
# INTERNET GATEWAY OUTPUTS #
############################

output "igw_id" {
  value = module.internet_gateway.id
  description = "The ID of the Internet Gateway."
}

#######################
# ROUTE TABLE OUTPUTS #
#######################

output "rt_id" {
  value = aws_route_table.route_table[*].id
  description = "List with IDs of route tables."
}
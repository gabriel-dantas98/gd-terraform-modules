###############
# VPC OUTPUTS #
###############

output "name" {
  value = var.vpc_name 
  description = "The Tag Name of the VPC"
}

output "id" {
  value = aws_vpc.main.id  
  description = "The ID of the VPC"
}

output "arn" {
  value = aws_vpc.main.arn
  description = "Amazon Resource Name (ARN) of VPC"
}

output "enable_dns_support" {
  value = aws_vpc.main.enable_dns_support
  description = "Whether or not the VPC has DNS support."
}

output "enable_dns_hostnames" {
  value = aws_vpc.main.enable_dns_hostnames
  description = "Whether or not the VPC has DNS hostname support."
}

output "main_route_table_id" {
  value = aws_vpc.main.main_route_table_id
  description = "The ID of the main route table associated with this VPC."
}

output "default_security_group_id" { 
 value = aws_vpc.main.default_security_group_id
 description = "The ID of the security group created by default on VPC creation."
}

#########################
# PUBLIC SUBNET OUTPUTS #
#########################

output "pub_subnet_id" {
  value = module.public_subnet[*].id
  description = "List with IDs of public subnets."
}

output "pub_subnet_arn" {
  value = module.public_subnet[*].arn
  description = "List with Arns of public subnets."
}

output "pub_subnet_igw_id" {
  value = module.public_subnet.igw_id
  description = "The ID of the Internet Gateway."
}

output "pub_subnet_rt_id" {
  value = module.public_subnet[*].rt_id
  description = "List with IDs of public subnet route tables."
}

##########################
# PRIVATE SUBNET OUTPUTS #
##########################

output "priv_subnet_id" {
  value = module.private_subnet[*].id
  description = "List with IDs of private subnets."
}

output "priv_subnet_arn" {
  value = module.private_subnet[*].arn
  description = "List with Arns of private subnets."
}

output "priv_subnet_ngw_id" {
  value = module.private_subnet.ngw_id
  description = "The ID of the NAT Gateway attached to the private subnet."
}

output "priv_subnet_ngw_subnet_id" {
  value = module.private_subnet.ngw_subnet_id
  description = "The Subnet ID of the subnet in which the NAT gateway is placed."
}

output "priv_subnet_ngw_public_ip" {
  value = module.private_subnet.ngw_public_ip
  description = "The public IP address of the NAT Gateway."
}

output "priv_subnet_ngw_eip_id" {
  value = module.private_subnet.ngw_eip_id
  description = "Contains the Elastic IP allocation ID."
}

output "priv_subnet_rt_id" {
  value = module.private_subnet[*].rt_id
  description = "List with IDs of private subnet route tables."
}


##########################
# DATABASE SUBNET OUTPUTS #
##########################

output "database_subnet_id" {
  value = module.database_subnet[*].id
  description = "List with IDs of database subnets."
}

output "database_subnet_arn" {
  value = module.database_subnet[*].arn
  description = "List with Arns of database subnets."
}

output "database_subnet_ngw_id" {
  value = module.database_subnet.ngw_id
  description = "The ID of the NAT Gateway attached to the database subnet."
}

output "database_subnet_ngw_subnet_id" {
  value = module.database_subnet.ngw_subnet_id
  description = "The Subnet ID of the subnet in which the NAT gateway is placed."
}

output "database_subnet_ngw_public_ip" {
  value = module.database_subnet.ngw_public_ip
  description = "The public IP address of the NAT Gateway."
}

output "database_subnet_ngw_eip_id" {
  value = module.database_subnet.ngw_eip_id
  description = "Contains the Elastic IP allocation ID."
}

output "priv_subnet_rt_id" {
  value = module.database_subnet[*].rt_id
  description = "List with IDs of database subnet route tables."
}

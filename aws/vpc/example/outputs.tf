# MAIN VPC OUTPUTS
output "name" {
  value = module.main_vpc.name 
  description = "The Tag Name of the VPC"
}

output "id" {
  value = module.main_vpc.id
  description = "The ID of the VPC"
}

output "arn" {
  value = module.main_vpc.arn
  description = "Amazon Resource Name (ARN) of VPC"
}

output "enable_dns_support" {
  value = module.main_vpc.enable_dns_support
  description = "Whether or not the VPC has DNS support."
}

output "enable_dns_hostnames" {
  value = module.main_vpc.enable_dns_hostnames
  description = "Whether or not the VPC has DNS hostname support."
}

output "main_route_table_id" {
  value = module.main_vpc.main_route_table_id
  description = "The ID of the main route table associated with this VPC."
}

output "default_security_group_id" { 
 value = module.main_vpc.default_security_group_id
 description = "The ID of the security group created by default on VPC creation."
}

# PUBLIC SUBNET OUTPUTS
output "pub_subnet_id" {
  value = module.main_vpc[*].pub_subnet_id
  description = "List with IDs of public subnets."
}

output "pub_subnet_arn" {
  value = module.main_vpc[*].pub_subnet_arn
  description = "List with Arns of public subnets."
}

output "pub_subnet_igw_id" {
  value = module.main_vpc.pub_subnet_igw_id
  description = "The ID of the Internet Gateway."
}

output "pub_subnet_rt_id" {
  value = module.main_vpc[*].pub_subnet_rt_id
  description = "List with IDs of public subnet route tables."
}

# PRIVATE SUBNET OUTPUTS
output "priv_subnet_id" {
  value = module.main_vpc[*].priv_subnet_id
  description = "List with IDs of private subnets."
}

output "priv_subnet_arn" {
  value = module.main_vpc[*].priv_subnet_arn
  description = "List with Arns of private subnets."
}

output "priv_subnet_ngw_id" {
  value = module.main_vpc.priv_subnet_ngw_id
  description = "The ID of the NAT Gateway attached to the private subnet."
}

output "priv_subnet_ngw_subnet_id" {
  value = module.main_vpc.priv_subnet_ngw_subnet_id
  description = "The Subnet ID of the subnet in which the NAT gateway is placed."
}

output "priv_subnet_ngw_public_ip" {
  value = module.main_vpc.priv_subnet_ngw_public_ip
  description = "The public IP address of the NAT Gateway."
}

output "priv_subnet_ngw_eip_id" {
  value = module.main_vpc.priv_subnet_ngw_eip_id
  description = "Contains the Elastic IP allocation ID."
}

output "priv_subnet_rt_id" {
  value = module.main_vpc[*].priv_subnet_rt_id
  description = "List with IDs of private subnet route tables."
}

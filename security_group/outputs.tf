##########################
# SECURITY GROUP OUTPUTS #
##########################

output "id" {
  value = aws_security_group.security_group.id
  description = "The ID of the security group."
}

output "arn" {
  value = aws_security_group.security_group.arn
  description = "The ARN of the security group."
}

output "vpc_id" {
  value = aws_security_group.security_group.vpc_id
  description = "The VPC ID."
}

output "name" {
  value = aws_security_group.security_group.name
  description = "The name of the security group."
}
output "description" {
  value = aws_security_group.security_group.description
  description = "The description of the security group."
}

output "ingress_rules" {
  value = aws_security_group.security_group.ingress
  description = "The ingress rules. See above for more."
}

output "egress_rules" {
  value = aws_security_group.security_group.egress
  description = "The egress rules. See above for more."
}






############################
# INTERNET GATEWAY OUTPUTS #
############################

output "id" {
  value = aws_internet_gateway.internet_gateway.id
  description = "The ID of the Internet Gateway."
}

output "owner_id" {
  value = aws_internet_gateway.internet_gateway.owner_id
  description = "The ID of the AWS account that owns the internet gateway."
}



output "id" { 
    value = aws_instance.main[*].id
    description = "The instance ID."
}

output "arn" { 
    value = aws_instance.main[*].arn   
    description = "The ARN of the instance."
}

output "availability_zone" { 
    value = aws_instance.main[*].availability_zone   
    description = "The availability zone of the instance."
}

output "placement_group" { 
    value = aws_instance.main[*].placement_group   
    description = "The placement group of the instance."
}

output "key_name" { 
    value = aws_instance.main[*].key_name   
    description = "The key name of the instance"
}

output "public_dns" { 
    value = aws_instance.main[*].public_dns   
    description = "The public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
}

output "public_ip" { 
    value = aws_instance.main[*].public_ip   
    description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use public_ip, as this field will change after the EIP is attached."
}

output "private_dns" { 
  value = aws_instance.main[*].private_dns   
  description = "The private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC"
}

output "private_ip" { 
  value = aws_instance.main[*].private_ip   
  description = "The private IP address assigned to the instance"
}

output "security_groups" { 
  value = aws_instance.main[*].security_groups   
  description = "The associated security groups."
}

output "vpc_security_group_ids" { 
  value = aws_instance.main[*].vpc_security_group_ids   
  description = "The associated security groups in non-value VPC"
}

output "subnet_id" { 
  value = aws_instance.main[*].subnet_id   
  description = "The VPC subnet ID."
}